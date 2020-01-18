---
layout: scalastyle
title: "Scalastyle - SBT plugin"
---

### Overview

This project is intended to provide Scala 2.11/2.12/2.13 & SBT 1.x plugin
support for Scalastyle.

### Repository

The repository for the Scalastyle SBT plugin is:
[https://oss.sonatype.org/content/repositories/releases/com/beautiful-scala](https://oss.sonatype.org/content/repositories/releases/com/beautiful-scala)

### Setup

Add the following line to `project/plugins.sbt`

```scala
addSbtPlugin("com.beautiful-scala" % "sbt-scalastyle" % "1.1.0")
```

### Usage

You will need a configuration file. The easiest way to get one is to use the
scalastyleGenerateConfig command:

```bash
sbt scalastyleGenerateConfig
```

This will create a scalastyle-config.xml in the current directory, with the
default settings. Then, you can check your code with the `scalastyle` command

```bash
sbt scalastyle
```

This produces a list of errors on the console, as well as an XML result file
`target/scalastyle-result.xml` (CheckStyle compatible format).

### Configuration options

| Setting                      | Type          | Description                                                                                                                                                                                                                                                           |
| ---------------------------- | :------------ | :-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| scalastyleTarget             | File          | XML file containing the Scalastyle report. Default value is `target/scalastyle-result.xml`                                                                                                                                                                            |
| scalastyleConfig             | File          | Scalastyle configuration. Default value is `scalastyle-config.xml`                                                                                                                                                                                                    |
| scalastyleConfigUrl          | Option\[URL\] | Scalastyle configuration URL. If this is Some(url), then this will be used in preference to the setting `scalastyleConfig`. It is downloaded and stored in the `target` directory, and refreshed every `scalastyleConfigRefreshHours` hours. Default value is `None`. |
| scalastyleConfigRefreshHours | Integer       | If scalastyleConfigUrl is set, refresh it after this number of hours. Default value is 24.                                                                                                                                                                            |
| scalastyleFailOnError        | Boolean       | If true, the scalastyle task fails if any messages at error level are output. Default value is false.                                                                                                                                                                 |
| scalastyleFailOnWarning      | Boolean       | If true, the scalastyle task fails if any messages at warning level are output. Default value is false.                                                                                                                                                               |
| scalastyleConfigUrlCacheFile | String        | When scalastyleConfigUrl is used, the name of the local file in which it is stored. Default is `target/scalastyle-config.xml`                                                                                                                                         |

If the remote source for your `scalastyle-config.xml` file is secured and
requires the passing of tokens in the header of the http request or ssh
authentication then scalastyleConfigUrl will not suffice. A work around is to
define your own update task and make scalastyle depend on it in your `build.sbt`
or `Build.scala`.

This example use enterprise github (private repositories) through the REST API
v3, bitbucket API to get raw files is similar:

```scala
lazy val updateScalaStyle = taskKey[Unit]("updateScalaStyle")

updateScalaStyle := {
    /**
    * Create a security token under Github > Profile Settings > Application
    * add repo_org in the scope of that token
    * set it to environment variable SBT_GITHUB_TOKEN
    *
    * ex:
    * export SBT_GITHUB_TOKEN='1234567890abcdef1234567890abcdef'
    */
    sys.env.get("SBT_GITHUB_TOKEN") match {
    case Some(oauthToken) =>
        val configFileUrl = "https://raw.githubusercontent.com/[owner]/[repository]/[branch_or_commit]/[path]/scalastyle-config.xml"
        val result: Int = file("target/scalastyle-config.xml") #< s"curl --fail -u $oauthToken:x-oauth-basic $configFileUrl" !
    case None =>
        println("Please set system variable SBT_GITHUB_TOKEN to update scalastyle config file")
    }
}

(scalastyle in Compile) <<= (scalastyle in Compile) dependsOn updateScalaStyle

(scalastyle in Test) <<= (scalastyle in Test) dependsOn updateScalaStyle
```

NB: This uses `curl` so, while it works correctly on MacOS and Linux (or other
\*NIX) it might give problem on windows environments.

### Running scalastyle on your test sources

You can check your test sources `(scalaSources in Test)` using the
`test:scalastyle` command

```bash
sbt test:scalastyle
```

This has exactly the same output as the scalastyle command, except that the
generated XML file is `target/scalastyle-test-result.xml` by default. All of the
configuration options for the `scalastyle` command are available in the Test
configuration for `test:scalastyle`, but you need to use the `Test`
configuration. For instance:

```scala
(scalastyleConfig in Test) := baseDirectory.value / "scalastyle-test-config.xml"
(scalastyleConfig in Test) := file("/foo/bar/scalastyle-test-config.xml")
(scalastyleConfigUrl in Test) := Some(url("http://www.scalastyle.org/scalastyle_config.xml"))
```

### Running scalastyle as part of another task

You can also have your scalastyle checks automatically run as part of another
task:

```scala
// Create a default Scala style task to run with tests
lazy val testScalastyle = taskKey[Unit]("testScalastyle")

// scalastyle >= 0.9.0
testScalastyle := scalastyle.in(Test).toTask("").value
// scalastyle <= 0.8.0
testScalastyle := org.scalastyle.sbt.ScalastylePlugin.scalastyle.in(Test).toTask("").value

(test in Test) := ((test in Test) dependsOn testScalastyle).value
```

or as part of the compile task:

```scala
lazy val compileScalastyle = taskKey[Unit]("compileScalastyle")

// scalastyle >= 0.9.0
compileScalastyle := scalastyle.in(Compile).toTask("").value
// scalastyle <= 0.8.0
compileScalastyle := org.scalastyle.sbt.ScalastylePlugin.scalastyle.in(Compile).toTask("").value

(compile in Compile) := ((compile in Compile) dependsOn compileScalastyle).value
```

But note that this makes the compile task dependent on the scalastyle task - the
scalastyle task executes first. This can cause problems because if the code
doesn't compile, you'll get the scalastyle errors messages, not the scalac ones.
Great though scalastyle is, it can't match the error messages produced by the
compiler. :-)

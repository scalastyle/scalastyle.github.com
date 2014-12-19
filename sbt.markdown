---
layout: scalastyle
title: "Scalastyle - SBT plugin"
---

### Overview

This project is intended to provide Scala 2.10 / SBT 0.13 plugin support for Scalastyle. The current version of the plugin is 0.6.0.

### Repository

The repository for the Scalastyle SBT plugin is: [Sonatype : https://oss.sonatype.org/content/repositories/releases/org/scalastyle](https://oss.sonatype.org/content/repositories/releases/org/scalastyle)

### Setup

Add the following lines to `project/plugins.sbt`

    addSbtPlugin("org.scalastyle" %% "scalastyle-sbt-plugin" % "0.6.0")

    resolvers += "sonatype-releases" at "https://oss.sonatype.org/content/repositories/releases/"

### Usage

You will need a configuration file. The easiest way to get one is to use the scalastyleGenerateConfig command:

    sbt scalastyleGenerateConfig

This will create a scalastyle-config.xml in the current directory, with the default settings. Then, you can check your code with the `scalastyle` command

    sbt scalastyle

This produces a list of errors on the console, as well as an XML result file `target/scalastyle-result.xml` (CheckStyle compatible format).

### Configuration options

|Setting                     |Type         |Description|
| -------------------------- |:----------- |:--------- |
|scalastyleTarget            |File         |XML file containing the Scalastyle report. Default value is `target/scalastyle-result.xml`
|scalastyleConfig            |File         |Scalastyle configuration. Default value is `scalastyle-config.xml`
|scalastyleConfigUrl         |Option\[URL\]|Scalastyle configuration URL. If this is Some(url), then this will be used in preference to the setting `scalastyleConfig`. It is downloaded and stored in the `target` directory, and refreshed every `scalastyleConfigRefreshHours` hours. Default value is `None`.
|scalastyleConfigRefreshHours|Integer      |If scalastyleConfigUrl is set, refresh it after this number of hours. Default value is 24.
|scalastyleFailOnError       |Boolean      |If true, the scalastyle task fails if any messages at error level are output. Default value is false.
|scalastyleConfigUrlCacheFile|String       |When scalastyleConfigUrl is used, the name of the local file in which it is stored. Default is `target/scalastyle-config.xml`

### Running scalastyle on your test sources

You can check your test sources `(scalaSources in Test)` using the `test:scalastyle` command

    sbt test:scalastyle

This has exactly the same output as the scalastyle command, except that the generated XML file is `target/scalastyle-test-result.xml` by default. All of the configuration options for the `scalastyle` command are available in the Test configuration for `test:scalastyle`, but you need to use the `Test` configuration. For instance:

    (scalastyleConfig in Test) := baseDirectory.value / "scalastyle-test-config.xml"

    (scalastyleConfig in Test) := file("/foo/bar/scalastyle-test-config.xml")

    (scalastyleConfigUrl in Test) := Some(url("http://www.scalastyle.org/scalastyle_config.xml"))

### Running scalastyle as part of another task

You can also have your scalastyle checks automatically run as part of another task:

    // Create a default Scala style task to run with tests
    lazy val testScalaStyle = taskKey[Unit]("testScalaStyle")
    
    testScalaStyle := {
      org.scalastyle.sbt.PluginKeys.scalastyle.toTask("").value
    }
    
    ...

    (test in Test) <<= (test in Test) dependsOn testScalaStyle


## Version 0.5.0 and before

These setup instructions apply to version 0.5.0 and previous versions

### Repository

The repository for the Scalastyle SBT plugin is: [Sonatype : https://oss.sonatype.org/content/repositories/releases/org/scalastyle](https://oss.sonatype.org/content/repositories/releases/org/scalastyle)

### Setup

Add the following lines to `project/plugins.sbt`

    addSbtPlugin("org.scalastyle" %% "scalastyle-sbt-plugin" % "0.5.0")

    resolvers += "sonatype-releases" at "https://oss.sonatype.org/content/repositories/releases/"

and, inject plugin settings into project in `build.sbt`:

    org.scalastyle.sbt.ScalastylePlugin.Settings

### Usage

You can check your code by typing

    sbt scalastyle

The result file is `target/scalastyle-result.xml` (CheckStyle compatible format).

Scalastyle Configuration file is `./scalastyle-config.xml` by default.
To generate a configuration file, type 

    sbt scalastyle-generate-config
    
You can also have your scalastyle checks automatically run as part of another task:

    // Create a default Scala style task to run with tests
    lazy val testScalaStyle = taskKey[Unit]("testScalaStyle")
    
    testScalaStyle := {
      org.scalastyle.sbt.PluginKeys.scalastyle.toTask("").value
    }
    
    ...

    (test in Test) <<= (test in Test) dependsOn testScalaStyle

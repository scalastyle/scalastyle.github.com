---
layout: scalastyle
title: "Scalastyle - Custom rules"
---

### Overview

Some people have rules which are specific to their sites, and which are not in
the standard Scalastyle distribution.

First, you will need to create a jar containing your custom rules. This should
contain the classes and a `reference.conf` typesafe config file, which contains
the error messages for your rule.

The sbt, and command line support custom rules, since version `0.7.0`.

### Creating your jar

So, for instance, if you had the following checker:

    package org.ext

    // checks that we don't use foobar
    class NoFoobarChecker extends ScalariformChecker {
      val errorKey = "dont.use.foobar"

      final def verify(ast: CompilationUnit): List[ScalastyleError] = {
        List() // details left as an exercise for the reader
      }
    }

Note that the `errorKey` val is `dont.use.foobar`. Make sure you compile this
class with the correct version of Scala (2.11/2.12/2.13). To find the correct
version, see the appropriate plugin (sbt or command line). With this class, you
need the following `reference.conf`:

    dont.use.foobar.message = "Avoid using foobar"
    dont.use.foobar.label = "Foobar"
    dont.use.foobar.description = "Check that foobar is not used"

`reference.conf` should be at the top level of the jar, so your final jar will
look something like:

```bash
jar tf nofoobarchecker.jar
  org/
  org/ext/
  org/ext/NoFoobarChecker.class
  reference.conf
```

You can have more than one rule in the jar, but you'll need a single
`reference.conf` with all of the messages for your rules.

And you'll obviously need to change your configuration as well:

```xml
<scalastyle commentFilter="enabled">
  <name>Scalastyle standard configuration</name>
  <check level="warning" class="org.scalastyle.scalariform.NullChecker" enabled="true"></check>
  <check level="warning" class="org.ext.NoFoobarChecker" enabled="true"></check>
</scalastyle>
```

Once you have the jar, you'll have to modify your sbt plugin configuration, your
maven plugin configuration or your command line.

### sbt

sbt is easy. You can add the jar as a normal library dependency into your
`project/plugins.sbt`:

```scala
addSbtPlugin("com.beautiful-scala" %% "sbt-scalastyle" % "1.1.0")
libraryDependencies += "org.ext" %% "nofoobarchecker" % "1.0.0"
```

Or just copy the custom rules into your `project/lib` directory, and you should
be good to go.

### Command line

The command line has an extra parameter `--externalJar` or `-e`

```bash
java -jar scalastyle_2.13-1.1.0-assembly.jar \
  -c scalastyle_config.xml \
  --externalJar nofoobarchecker.jar \
  src/main/scala
```

You will need to use whatever version of scala that you specify on the command
line to compile your custom rules.

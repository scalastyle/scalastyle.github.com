---
layout: scalastyle
title: "Scalastyle - SBT plugin"
---

### Overview

This project is intended to provide Scala 2.9.2 / SBT 0.12.3 plugin support for Scalastyle. There is also a version for 0.13.0 / 2.10.

### Repository

The repository for the Scalastyle SBT plugin is: [Sonatype : https://oss.sonatype.org/content/repositories/releases/org/scalastyle](https://oss.sonatype.org/content/repositories/releases/org/scalastyle)

### Setup

Add the following lines to `project/plugins.sbt`

    addSbtPlugin("org.scalastyle" %% "scalastyle-sbt-plugin" % "0.4.0")

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

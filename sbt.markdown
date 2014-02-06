---
layout: scalastyle
title: "Scalastyle - SBT plugin"
---

### Overview

This project is intended to provide Scala 2.9.2 / SBT 0.12.3 plugin support for Scalastyle. There is also a version for 0.13.0 / 2.10.

### Repository

The repository for the Scalastyle SBT plugin is: [Sonatype : https://oss.sonatype.org/content/repositories/releases/org/scalastyle/scalastyle-sbt-plugin](https://oss.sonatype.org/content/repositories/releases/org/scalastyle/scalastyle-sbt-plugin)

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

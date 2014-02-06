---
layout: scalastyle
title: "Scalastyle - Command line"
---

### Running scalastyle from the command line

Download [scalastyle-batch](https://oss.sonatype.org/content/repositories/releases/org/scalastyle/scalastyle-batch_2.10/0.4.0/scalastyle-batch_2.10-0.4.0-distribution.zip).

This zip contains an executable jar along with the dependencies in lib/. Unzip this file somewhere, and run the jar like:

    $ java -jar scalastyle-batch_2.10.jar --config lib/scalastyle_config.xml src/main/scala

or similar. You'll need a [configuration](configuration.html).


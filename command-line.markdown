---
layout: scalastyle
title: "Scalastyle - Command line"
---

### Running scalastyle from the command line (version 0.6.0 and later)

Download [scalastyle-batch 2.10](https://oss.sonatype.org/content/repositories/releases/org/scalastyle/scalastyle_2.10/0.6.0/scalastyle_2.10-0.6.0-batch.jar) or [scalastyle-batch 2.11](https://oss.sonatype.org/content/repositories/releases/org/scalastyle/scalastyle_2.11/0.6.0/scalastyle_2.11-0.6.0-batch.jar).

This zip contains an executable jar along with the dependencies in lib/. Unzip this file somewhere, and run the jar like:

    $ java -jar scalastyle-batch_2.10.jar --config lib/scalastyle_config.xml src/main/scala

or similar. You'll need a [configuration](configuration.html).

### Running scalastyle from the command line (pre-0.6.0)

Download [scalastyle-batch](https://oss.sonatype.org/content/repositories/releases/org/scalastyle/scalastyle-batch_2.10/0.5.0/scalastyle-batch_2.10-0.5.0-distribution.zip).

This zip contains an executable jar along with the dependencies in lib/. Unzip this file somewhere, and run the jar like:

    $ java -jar scalastyle-batch_2.10.jar --config lib/scalastyle_config.xml src/main/scala

or similar. You'll need a [configuration](configuration.html).


---
layout: scalastyle
title: "Scalastyle - Command line"
---

### Running scalastyle as an executable

Some tools (like [overcommit](git-pre-commit-hook.html) require a `scalastyle`
executable to be on your PATH

**Mac OS X** - [Homebrew](http://brew.sh/) makes it easy to install scalastyle

    $ brew install scalastyle

**Linux** - Save the following script as `scalastyle`, place it on your PATH,
  then make it executable via `chmod +x path/to/scalastyle`.  Note that you will
  need to download the appropriate scalastyle-batch.jar and update its path accordingly

    #!/bin/bash
    java -jar path/to/scalastyle_2.12-0.9.0-batch.jar "$@"

### Running scalastyle from the command line (version 0.6.0 and later)

Download

 * [scalastyle-batch 2.10](https://oss.sonatype.org/content/repositories/releases/org/scalastyle/scalastyle_2.10/0.9.0/scalastyle_2.10-0.9.0-batch.jar)
 * [scalastyle-batch 2.11](https://oss.sonatype.org/content/repositories/releases/org/scalastyle/scalastyle_2.11/0.9.0/scalastyle_2.11-0.9.0-batch.jar)
 * [scalastyle-batch 2.12](https://oss.sonatype.org/content/repositories/releases/org/scalastyle/scalastyle_2.12/0.9.0/scalastyle_2.12-0.9.0-batch.jar)

Run the jar like:

    $ java -jar scalastyle-batch_2.12.jar --config lib/scalastyle_config.xml src/main/scala

or similar. You'll need a [configuration](configuration.html).

### Running scalastyle from the command line (pre-0.6.0)

Download [scalastyle-batch](https://oss.sonatype.org/content/repositories/releases/org/scalastyle/scalastyle-batch_2.10/0.5.0/scalastyle-batch_2.10-0.5.0-distribution.zip).

This zip contains an executable jar along with the dependencies in lib/. Unzip this file somewhere, and run the jar like:

    $ java -jar scalastyle-batch_2.10.jar --config lib/scalastyle_config.xml src/main/scala

or similar. You'll need a [configuration](configuration.html).

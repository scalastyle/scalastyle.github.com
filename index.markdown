---
layout: scalastyle
title: "Scalastyle - Scala style checker"
---

Scalastyle examines your Scala code and indicates potential problems with it. If you have come across Checkstyle for Java,
then you'll have a good idea what scalastyle is. Except that it's for Scala obviously.

Scalastyle is used as part of the grading framework for the course [Functional Programming Principles in Scala by Martin Odersky](https://www.coursera.org/course/progfun) on Coursera.

### How do I use scalastyle?

The latest stable version of Scalastyle is 0.9.0 for Scala 2.10/2.11/2.12. See the [Release Notes](release-notes.html)

There are several ways of using it:

 * [Maven Plugin](maven.html)
 * [Eclipse plugin (for 4.2 Juno and 4.3 Kepler and 4.4 Luna)](eclipse-index.html)
 * [SBT plugin](sbt.html)
 * [Command line](command-line.html)
 * [Gradle Plugin](https://github.com/ngbinh/gradle-scalastyle-plugin)
 * Intellij - You can enable scalastyle in Intellij by selecting Settings->Editor->Inspections, then searching for Scala style inspections.
 * [Git pre-commit hook](git-pre-commit-hook.html)

And you'll need a [configuration](configuration.html). If you have your own custom rules, then see [custom rules](custom-rules.html)

For the list of possible rules, see [Implemented Rules](rules-0.9.0.html).

#### Download

To download Scalastyle, the jar is available from Sonatype: [2.12](https://oss.sonatype.org/content/repositories/releases/org/scalastyle/scalastyle_2.12) [2.11](https://oss.sonatype.org/content/repositories/releases/org/scalastyle/scalastyle_2.11) [2.10](https://oss.sonatype.org/content/repositories/releases/org/scalastyle/scalastyle_2.10).
<br/>
For the maven plugin, see [Scalastyle Maven Plugin](maven.html)
<br/>
For the SBT plugin, see [Scalastyle SBT Plugin](sbt.html)
<br/>
Eclipse plugin (for 4.4 Luna and later): Update site [http://www.scalastyle.org/downloads/luna-0.9.0/site](http://www.scalastyle.org/downloads/luna-0.9.0/site)

The latest development snapshots are available from [Sonatype snapshots](https://oss.sonatype.org/content/repositories/snapshots/org/scalastyle/)

### Rules

For a list of current rules, see [Implemented Rules](rules-0.9.0.html).

For a list of (planned) rules, see the [Scalastyle WIKI](https://github.com/scalastyle/scalastyle/wiki).
If you want to add a rule, then please raise an [Issue](https://github.com/scalastyle/scalastyle/issues) (or even better a pull request)

For a list of rules in the latest development version, see [Development Implemented Rules](rules-dev.html).

For the version 0.9.0 rules, see [0.9.0 Implemented Rules](rules-0.9.0.html).

For the version 0.8.0 rules, see [0.8.0 Implemented Rules](rules-0.8.0.html).

For the version 0.7.0 rules, see [0.7.0 Implemented Rules](rules-0.7.0.html).

For the version 0.6.0 rules, see [0.6.0 Implemented Rules](rules-0.6.0.html).

For the version 0.5.0 rules, see [0.5.0 Implemented Rules](rules-0.5.0.html).

For the version 0.4.0 rules, see [0.4.0 Implemented Rules](rules-0.4.0.html).

For the version 0.3.0 rules, see [0.3.0 Implemented Rules](rules-0.3.0.html).

For the version 0.2.0 rules, see [0.2.0 Implemented Rules](rules-0.2.0.html).

For the version 0.1.0 rules, see [0.1.0 Implemented Rules](rules-0.1.0.html).

### Contrbuting

If you wish to contribute to Scalastyle, please see the [Scalastyle Developer Guide](developer-guide.html)

### Questions and comments

If you have any questions or comments, please see [Scalastyle users Google groups](https://groups.google.com/forum/#!forum/scalastyle-users)

### Github repositories

 * [Scalastyle](https://github.com/scalastyle/scalastyle)
 * [Maven plugin](https://github.com/scalastyle/scalastyle-maven-plugin)
 * [Eclipse plugin](https://github.com/scalastyle/scalastyle-plugin)
 * [SBT plugin](https://github.com/scalastyle/scalastyle-sbt-plugin)


---
layout: scalastyle
title: "Scalastyle - Scala style checker"
---

Scalastyle examines your Scala code and indicates potential problems with it. If
you have come across Checkstyle for Java, then you'll have a good idea what
scalastyle is. Except that it's for Scala obviously.

Scalastyle is used as part of the grading framework for the course
[Functional Programming Principles in Scala by Martin Odersky](https://www.coursera.org/course/progfun)
on Coursera.

### How do I use scalastyle?

The latest stable version of Scalastyle is 1.1.0 for Scala 2.11/2.12/2.13. See
the [Release Notes](release-notes.html).

There are several ways of using it:

- [SBT plugin](sbt.html)
- [Command line](command-line.html)
- IntelliJ - you can enable scalastyle in IntelliJ by selecting
  Settings->Editor->Inspections, then searching for Scalastyle inspections
- [sonar-scala](https://sonar-scala.com) - Scala plugin for SonarQube with built
  in support for Scalastyle
- [Codacy](https://www.codacy.com) - you get out-of-the-box analysis on your git
  repositories
- [Git pre-commit hook](git-pre-commit-hook.html)

And you'll need a [configuration](configuration.html) file. If you have your own
custom rules, then see [custom rules](custom-rules.html).

For the list of possible rules, see [Implemented Rules](rules-1.1.0.html).

#### Download

To download Scalastyle, the jar is available from Sonatype:
[2.13](https://oss.sonatype.org/content/repositories/releases/com/beautiful-scala/scalastyle_2.13)
[2.12](https://oss.sonatype.org/content/repositories/releases/com/beautiful-scala/scalastyle_2.12)
[2.11](https://oss.sonatype.org/content/repositories/releases/com/beautiful-scala/scalastyle_2.11).  
For the SBT plugin, see [Scalastyle SBT Plugin](sbt.html).  
The latest development snapshots are available from
[Sonatype snapshots](https://oss.sonatype.org/content/repositories/snapshots/com/beautiful-scala/).

### Rules

For a list of current rules, see [Implemented Rules](rules-1.1.0.html).

If you want to add a rule, then please raise an
[Issue](https://github.com/beautiful-scala/scalastyle/issues) (or even better a
pull request).

For a list of rules in the latest development version, see
[Development Implemented Rules](rules-dev.html).

For the version 1.1.0 rules, see [1.1.0 Implemented Rules](rules-1.1.0.html).  
For the version 1.0.0 rules, see [1.0.0 Implemented Rules](rules-1.0.0.html).  
For the version 0.9.0 rules, see [0.9.0 Implemented Rules](rules-0.9.0.html).  
For the version 0.8.0 rules, see [0.8.0 Implemented Rules](rules-0.8.0.html).  
For the version 0.7.0 rules, see [0.7.0 Implemented Rules](rules-0.7.0.html).  
For the version 0.6.0 rules, see [0.6.0 Implemented Rules](rules-0.6.0.html).  
For the version 0.5.0 rules, see [0.5.0 Implemented Rules](rules-0.5.0.html).  
For the version 0.4.0 rules, see [0.4.0 Implemented Rules](rules-0.4.0.html).  
For the version 0.3.0 rules, see [0.3.0 Implemented Rules](rules-0.3.0.html).  
For the version 0.2.0 rules, see [0.2.0 Implemented Rules](rules-0.2.0.html).  
For the version 0.1.0 rules, see [0.1.0 Implemented Rules](rules-0.1.0.html).

### Contributing

If you wish to contribute to Scalastyle, please see the
[Scalastyle Developer Guide](developer-guide.html).

### Questions and comments

If you have any questions or comments, please see
[Scalastyle users Google group](https://groups.google.com/forum/#!forum/scalastyle-users)
or the [Gitter](https://github.com/scalastyle/scalastyle) channel.

### Github repositories

- [Scalastyle](https://github.com/beautiful-scala/scalastyle)
- [SBT plugin](https://github.com/beautiful-scala/sbt-scalastyle)
- [SonarQube plugin](https://sonar-scala.com)
- [Codacy plugin](https://github.com/codacy/codacy-scalastyle)

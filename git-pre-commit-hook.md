---
layout: scalastyle
title: "Scalastyle - Git pre-commit hook"
---

### Running scalastyle with overcommit

[overcommit](https://github.com/brigade/overcommit) is a fully configurable and
extendable Git hook manager that includes out-of-the-box support for running
scalastyle as a Git pre-commit hook.

To configure overcommit to run scalastyle, include the following in your
`.overcommit.yml` file:

    PreCommit:
      Scalastyle:
        enabled: true
        flags: ['-c', 'path/to/scalastyle-config.xml']

This requires you to have a `scalastyle` executable on your PATH. See the
[command line](command-line.html) documentation for more info.

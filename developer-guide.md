---
layout: scalastyle
title: "Scalastyle - Developer guide"
---

### Contributing

Want to contribute? Great! Look at the wiki for potential rules to implement, or
do one of your own, and implement it.

1. Read this document.
2. Fork the repo.
3. Create a branch (`git checkout -b my-new-rule`)
4. Commit your changes (`git commit -am "Added NoFooAllowed"`)
5. Push to the branch (`git push origin my-new-rule`)
6. Create a [PR](https://github.com/beautiful-scala/scalastyle/issues) with a
   link to your branch
7. Enjoy a coffee and wait

### Pre-requisites

- [git](http://gitscm.com)
- [sbt](http://www.scala-sbt.org)

### Source control (git & github) & building:

First, fork the repo on github. On
[https://github.com/beautiful-scala/scalastyle](https://github.com/beautiful-scala/scalastyle),
click on the button 'Fork' and wait a couple of seconds. This will create your
own fork of the git repo. You should always work with this repo, and create Pull
Requests to the main scalastyle repo.

To clone the git repo, and check out the master branch:

```bash
git clone git@github.com:<yourgithubnamehere>/scalastyle.git
cd scalastyle
```

Scalastyle uses [sbt](http://www.scala-sbt.org) to build. To create the
distribution, run

```bash
sbt package
```

You will need sbt 1 to build. This will compile the source code and run the
tests.

### Getting started with development

When you're developing, it's pretty much always a good idea to create a local
branch and commit to that.

```bash
git branch my-great-new-checker
git checkout my-great-new-checker
...
# create beautiful code
git commit -m "Add checker to check that my code is great."
```

Then, when you've finished, go onto github, and create a pull request so that
the code can be reviewed and pulled into the Scalastyle repo.

### Testing

To run the tests:

```bash
sbt test
```

### Submitting pull requests

Pull requests are always welcome. To create a pull request, go to your repo, and
click on `Pull Request`. Enter the commit details, and submit it. This will
create an issue in github for scalastyle, which will notify the maintainers. The
following things make it more likely that we will accept your pull request:

- We do Test Driven Development. Please create tests for your code.
- The pull request is a single commit. This means that there will only be one
  log message for the change. This makes it a lot easier for everyone. See the
  section on squashing.
- The code has the correct style. To check this, you can use Scalastyle.
  Seriously, use the scalastyle_config.xml to check your code.

For pull requests, please follow the guidelines in
[10 tips for better Pull Requests by Mark Seemann](http://blog.ploeh.dk/2015/01/15/10-tips-for-better-pull-requests).
If you do, they are a lot more likely to get accepted.

### What to work on

Please see the set of
[issues](https://github.com/beautiful-scala/scalastyle/issues).

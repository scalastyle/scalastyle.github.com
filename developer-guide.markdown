---
layout: scalastyle
title: "Scalastyle - Eclipse - Getting started"
---

### Pre-requisites

* [git](http://gitscm.com/)
* [Maven 3](http://maven.apache.org/)

### Source control (git & github) & building:

First, fork the repo on github. On [https://github.com/scalastyle/scalastyle](https://github.com/scalastyle/scalastyle), click on the button 'Fork'
and wait a couple of seconds. This will create your own fork of the git repo. You should always work with this repo, and create Pull Requests to the main scalastyle
repo.

To clone the git repo, and check out the master branch:

    $ git clone git@github.com:<yourgithubnamehere>/scalastyle.git
    $ cd scalastyle

Scalastyle uses [Maven 2](http://maven.apache.org/) to build. To create the distribution, run

    $ mvn package

This will compile the source code and run the tests.

### Getting started with development

When you're developing, it's pretty much always a good idea to create a local branch and commit to that.

    $ git branch my-great-new-checker
	$ git checkout my-great-new-checker
    $ ...
	$ create beautiful code
	$ git commit -m "checker to check that my code is great"
	
Then, when you've finished, go onto github, and create a pull request so that the code can be reviewed and pulled into the scalastyle repo.

### Submitting pull requests

Pull requests are always welcome. To create a pull request, go to your repo, and click on `Pull Request`. Enter the commit details, and submit it. This will create
an issue in github for scalastyle, which will notify the maintainers. The following things make it more likely that we will accept your pull request:

* We do Test Driven Development. Please create tests for your code.
* The pull request is a single commit. This means that there will only be one log message for the change. This makes it a lot easier for everyone. See the section on squashing.
* The code has the correct style. To check this, you can use Scalastyle :-). Seriously, use the scalastyle_dev_config.xml to check your code. When we have a maven plugin, this will be enforced. If anyone is interested in writing a maven plugin, please feel free.

### What to work on

Please see the set of [issues](https://github.com/scalastyle/scalastyle/issues) or the [Scalastyle WIKI](https://github.com/scalastyle/scalastyle/wiki) for a list of potential rules.

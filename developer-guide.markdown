---
layout: scalastyle
title: "Scalastyle - Developer guide"
---

### Contributing

Want to contribute? Great! Look at the wiki for potential rules to implement, or do one of your own, and implement it.

1. Read this document.
2. Fork the repo.
3. Create a branch (`git checkout -b my_new_rule`)
4. Commit your changes (`git commit -am "Added NoFooAllowed"`)
5. Push to the branch (`git push origin my_new_rule`)
6. Create a [PR](https://github.com/scalastyle/scalastyle/issues) with a link to your branch
7. Enjoy a coffee and wait

### Pre-requisites

* [git](http://gitscm.com/)
* [sbt](http://www.scala-sbt.org/)

### Source control (git & github) & building:

First, fork the repo on github. On [https://github.com/scalastyle/scalastyle](https://github.com/scalastyle/scalastyle), click on the button 'Fork'
and wait a couple of seconds. This will create your own fork of the git repo. You should always work with this repo, and create Pull Requests to the main scalastyle
repo.

To clone the git repo, and check out the master branch:

    $ git clone git@github.com:<yourgithubnamehere>/scalastyle.git
    $ cd scalastyle

Scalastyle uses [sbt](http://www.scala-sbt.org/) to build. To create the distribution, run

    $ sbt package

You will need at least version 0.13.6 to build. This will compile the source code and run the tests.

### Getting started with development

When you're developing, it's pretty much always a good idea to create a local branch and commit to that.

    $ git branch my-great-new-checker
	  $ git checkout my-great-new-checker
    $ ...
	  $ create beautiful code
	  $ git commit -m "checker to check that my code is great"
	
Then, when you've finished, go onto github, and create a pull request so that the code can be reviewed and pulled into the scalastyle repo.

### Testing

To run the tests:

    $ sbt test

### Submitting pull requests

Pull requests are always welcome. To create a pull request, go to your repo, and click on `Pull Request`. Enter the commit details, and submit it. This will create
an issue in github for scalastyle, which will notify the maintainers. The following things make it more likely that we will accept your pull request:

* We do Test Driven Development. Please create tests for your code.
* The pull request is a single commit. This means that there will only be one log message for the change. This makes it a lot easier for everyone. See the section on squashing.
* The code has the correct style. To check this, you can use Scalastyle :-). Seriously, use the scalastyle_config.xml to check your code.

For pull requests, please follow the guidelines in [10 tips for better Pull Requests by Mark Seemann](http://blog.ploeh.dk/2015/01/15/10-tips-for-better-pull-requests/). If you do, they are a lot more likely to get accepted.

### What to work on

Please see the set of [issues](https://github.com/scalastyle/scalastyle/issues) or the [Scalastyle WIKI](https://github.com/scalastyle/scalastyle/wiki) for a list of potential rules.

### Maven repo

Snapshots are available from the Sonatype nexus repository: https://oss.sonatype.org/content/repositories/snapshots/.
To use, add something like the following to your settings.xml:

    <repository>
      <id>sonatype-nexus-snapshots</id>
      <name>Sonatype OSS</name>
      <url>https://oss.sonatype.org/content/repositories/releases/</url>
      <layout>default</layout>
      <releases>
        <enabled>true</enabled>
        <updatePolicy>never</updatePolicy>
      </releases>
      <snapshots>
        <enabled>false</enabled>
        <updatePolicy>never</updatePolicy>
      </snapshots>
    </repository>



---
layout: scalastyle
title: "Scalastyle - Maven plugin"
---

### Goals Overview
* **scalastyle:check** performs a violation check against the scalastyle config file to see if there are any violations. 
It counts the number of violations found and displays it on the console if verbose is enabled.

### Repository

The repository for the Scalastyle maven plugin is: [Sonatype : https://oss.sonatype.org/content/repositories/releases/org/scalastyle/scalastyle-maven-plugin](https://oss.sonatype.org/content/repositories/releases/org/scalastyle/scalastyle-maven-plugin)

### Usage - scalastyle as part of build cycle
To Configure the Scalastyle Plugin, you need to the add it in the &lt;build&gt; section of your pom.xml as shown in the sample below,
and by default the build will fail if there are any violations of level error found.
Default phase of execution is `verify`. The following is an example of a configuration which could be used in a pom:

<pre>
    &lt;build&gt;
        &lt;plugins&gt; 
          ...
          &lt;plugin&gt;
            &lt;groupId&gt;org.scalastyle&lt;/groupId&gt;
            &lt;artifactId&gt;scalastyle-maven-plugin&lt;/artifactId&gt;
            &lt;version&gt;0.9.0&lt;/version&gt;
            &lt;configuration&gt;
              &lt;verbose&gt;false&lt;/verbose&gt;
              &lt;failOnViolation&gt;true&lt;/failOnViolation&gt;
              &lt;includeTestSourceDirectory&gt;true&lt;/includeTestSourceDirectory&gt;
              &lt;failOnWarning&gt;false&lt;/failOnWarning&gt;
              &lt;sourceDirectory&gt;${project.basedir}/src/main/scala&lt;/sourceDirectory&gt;
              &lt;testSourceDirectory&gt;${project.basedir}/src/test/scala&lt;/testSourceDirectory&gt;
              &lt;configLocation&gt;${project.basedir}/lib/scalastyle_config.xml&lt;/configLocation&gt;
              &lt;outputFile&gt;${project.basedir}/scalastyle-output.xml&lt;/outputFile&gt;
              &lt;outputEncoding&gt;UTF-8&lt;/outputEncoding&gt;
            &lt;/configuration&gt;
            &lt;executions&gt;
              &lt;execution&gt;
                &lt;goals&gt;
                  &lt;goal&gt;check&lt;/goal&gt;
                &lt;/goals&gt;
              &lt;/execution&gt;
            &lt;/executions&gt;
          &lt;/plugin&gt;
            ...
        &lt;/plugins&gt;
    &lt;/build&gt;
</pre>

You can also specify multiple source directories if necessary. Replace the &lt;sourceDirectory&gt; element with &lt;sourceDirectories&gt;:

<pre>
    &lt;sourceDirectories&gt;
      &lt;dir&gt;${project.basedir}/src/main/scala&lt;/dir&gt;
      &lt;dir&gt;${project.basedir}/src/main/generated-scala&lt;/dir&gt;
    &lt;/sourceDirectories&gt;
</pre>

and similarly for &lt;testSourceDirectory&gt; & &lt;testSourceDirectories&gt;.

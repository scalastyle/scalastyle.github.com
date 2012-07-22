---
layout: scalastyle
title: "Scalastyle - Eclipse - Getting started"
---


To start using Scalastyle with your project, you need to add Scalastyle Nature to your project, set up a configuration for Scalastyle,
then enable Scalastyle for that project.

### Add Scalastyle Nature to your project

The Scalastyle plugin uses a project builder to check your Scala files against your configuration.
Each time you modify a scala file, the file will be checked against your configuration when the file is saved.
To add this builder to your project, go to the project in the Project Explorer and select **Scalastyle->Add Scalastyle Nature**

### Add a configuration file to your project
Scalastyle requires a configuration file which tells it which rules to apply to your code. The easiest way to begin is to copy the file:

<a href="https://github.com/scalastyle/scalastyle/blob/master/lib/scalastyle_config.xml">https://github.com/scalastyle/scalastyle/blob/master/lib/scalastyle_config.xml</a>

This is the configuration we use with Scalastyle, so it's the best as well :-) Store this file somewhere in your project tree, where it will be accessible from Eclipse.

### Add the configuration file to the list of available configuration files

In the Workspace Preferences, select the Scalastyle configuration page. You can then add the file you've just copied into your project into that list.

### Select the configuration for your project.

Finally, back in the project preferences, go and select the configuration in the drop down list, and ensure that the Enabled checkbox is ticked.
<br/>Do a project clean and build, and you should see Scalastyle errors appear in your problems view.

### Modify the configuration.
In the workspace preferences, you can modify the rules to check by selecting the configuration and clicking on Edit.

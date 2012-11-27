---
layout: scalastyle
title: "Scalastyle - Configuration"
---

### Quick start

You can just use the default scalastyle configuration [scalastyle_config.xml](scalastyle_config.xml). Right-click this link and select `Save link as`
This is the one we use for scalastyle development, so it's obviously the best :-)

### Format of the file

The configuration file is XML containing a list of rules to apply to your Scala source. An example configuration would be:

	<scalastyle commentFilter="enabled">
	 <name>Scalastyle standard configuration</name>
	 <check level="warning" class="org.scalastyle.file.FileTabChecker" enabled="true" />
	 <check level="warning" class="org.scalastyle.file.FileLengthChecker" enabled="true">
	  <parameters>
	   <parameter name="maxFileLength">800</parameter>
	  </parameters>
	 </check>
	</scalastyle>

Each *check* element is the name of the class which implements the checker along with any parameters. For a list of rules plus parameters, see [Implemented Rules](rules-0.2.0.html).

### Comment filters

If you wish to ignore a particular scalastyle rule, you can put a comment in the source before and after the line, with the following syntax:

    // scalastyle:off
    // scalastyle:on

You can also switch off checking for a particular rule by specifying the id of the rule to ignore:

    // scalastyle:off magic.number
    var foobar = 134
    // scalastyle:on magic.number

### Custom messages

Messages are defined within the scalastyle_messages.properties. If however, you wish to have a custom error message for a particular rule, then
you can do so by defining a customMessage element in the configuration, such as:

    <check level="warning" class="org.scalastyle.scalariform.MagicNumberChecker" enabled="true">
     <customMessage>Please don't use magic numbers</customMessage>
    </check>

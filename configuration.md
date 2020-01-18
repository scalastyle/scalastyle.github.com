---
layout: scalastyle
title: "Scalastyle - Configuration"
---

### Quick start

You can just use the default Scalastyle configuration
[scalastyle_config.xml](https://raw.githubusercontent.com/beautiful-scala/scalastyle/v1.1.0/lib/scalastyle_config.xml).
Right-click this link and select `Save link as`. This is the one we use for
Scalastyle development, so it's obviously the best :-)

### Format of the file

The configuration file is XML containing a list of rules to apply to your Scala
source. A (short) example configuration would be:

```xml
<scalastyle commentFilter="enabled">
    <name>Scalastyle standard configuration</name>
    <check level="warning" class="org.scalastyle.file.FileTabChecker" enabled="true" />
    <check level="warning" class="org.scalastyle.file.FileLengthChecker" enabled="true">
    <parameters>
    <parameter name="maxFileLength">800</parameter>
    </parameters>
    </check>
</scalastyle>
```

Each _check_ element is the name of the class which implements the checker along
with any parameters. For a list of rules plus parameters, see
[Implemented Rules](rules-1.1.0.html).

### Comment filters

If you wish to turn off checking for a section of code, you can put a comment in
the source before and after the section, with the following syntax:

```scala
// scalastyle:off
...
// naughty stuff
...
// scalastyle:on
```

You can switch off checking for a single line using a comment at the end of the
line:

```scala
naughty()  // scalastyle:ignore
```

You can also switch off checking for a specific rule by specifying the id of the
rule to ignore:

```scala
// scalastyle:off magic.number
var foobar = 134
// scalastyle:on magic.number
```

### Custom messages

If you wish to have a custom error message for a particular checker, then you
can do so by defining a customMessage element in the configuration, such as:

```xml
<check level="warning" class="org.scalastyle.scalariform.MagicNumberChecker" enabled="true">
    <customMessage>Please don't use magic numbers</customMessage>
</check>
```

If you wish to have a customId associated with a rule (for instance you may have
the same rule with multiple configurations), then you can specify the customId
attribute:

```xml
<check customId="this.is.custom" level="warning" class="org.scalastyle.scalariform.MagicNumberChecker" enabled="true" />
```

---
layout: scalastyle
title: "Scalastyle - Command line"
---

### Running Scalastyle using Coursier

#### Install Coursier

**Mac OS X** - using [Homebrew](http://brew.sh)

```bash
brew tap coursier/formulas
brew install coursier/formulas/coursier
```

**Linux**

```bash
curl -Lo coursier https://git.io/coursier-cli
chmod +x coursier
```

**Windows**

```
bitsadmin /transfer downloadCoursierCli https://git.io/coursier-cli "%cd%\coursier"
bitsadmin /transfer downloadCoursierBat https://git.io/coursier-bat "%cd%\coursier.bat"
```

More details on Coursier's [website](https://get-coursier.io/docs/cli-overview).

#### Execute Scalastyle:

```bash
coursier launch com.beautiful-scala:scalastyle_2.13:1.1.0 \
    -M org.scalastyle.Main -- \
    -c scalastyle_config.xml \
    src/main/scala
```

### Running Scalastyle from the command line

Download

- [scalastyle_2.13-1.1.0-assembly.jar](https://repo1.maven.org/maven2/com/beautiful-scala/scalastyle_2.13/1.1.0/scalastyle_2.13-1.1.0-assembly.jar)
- [scalastyle_2.12-1.1.0-assembly.jar](https://repo1.maven.org/maven2/com/beautiful-scala/scalastyle_2.12/1.1.0/scalastyle_2.12-1.1.0-assembly.jar)
- [scalastyle_2.11-1.1.0-assembly.jar](https://repo1.maven.org/maven2/com/beautiful-scala/scalastyle_2.11/1.1.0/scalastyle_2.11-1.1.0-assembly.jar)

Execute the jar like:

    $ java -jar scalastyle_2.13-1.1.0-assembly.jar -c scalastyle_config.xml src/main/scala

You'll need a [configuration](configuration.html).

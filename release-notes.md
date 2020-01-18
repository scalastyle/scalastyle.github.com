---
layout: scalastyle
title: "Scalastyle - Release notes"
---

# Version 1.1.0

New features

- Cross compile for 2.13.
  ([#353](https://github.com/scalastyle/scalastyle/pull/353) -
  [@cddude229](https://github.comcddude229))
- Add CaseBraceChecker rule - braces aren't required in `case` clauses.
  ([#305](https://github.com/scalastyle/scalastyle/pull/305) -
  [@evis](https://github.comevis))
- Add WhileBraceChecker rule - it's recommended to never omit braces when using
  `while`. ([#306](https://github.com/scalastyle/scalastyle/pull/306) -
  [@evis](https://github.comevis))
- Add ForLoopChecker rule - omit braces if you have a `yield` clause, otherwise,
  surround the contents with curly-braces, even if the contents are only a
  single line. ([#303](https://github.com/scalastyle/scalastyle/pull/303) -
  [@Darhazer](https://github.comDarhazer))

Fixes and improvements

- Upgrade scalariform to 0.2.10, which brings the following changes:
  - Add support for multiline param groups.
  - Add support for inline single case statements.
  - Add trailing comma support and support for Scala 2.13.
- Allow the MethodLengthChecker to ignore empty lines.
  ([#301](https://github.com/scalastyle/scalastyle/pull/301) -
  [@canoztokmak](https://github.comcanoztokmak))
- Enhance RedundantIfChecker to raise violations also when the true/false
  statements are in braces.
  ([#296](https://github.com/scalastyle/scalastyle/pull/296) -
  [@mccartney](https://github.commccartney))
- Fix ProcedureDeclarationChecker rule name in the config.
  ([#299](https://github.com/scalastyle/scalastyle/pull/299) -
  [@BalmungSan](https://github.comBalmungSan))
- Fix ScalaDocChecker warnings if implicit def found first in an object.
  ([#285](https://github.com/scalastyle/scalastyle/pull/285) -
  [@tanishiking](https://github.comtanishiking))
- Make MagicNumberChecker's ignore param tolerate spaces.
  ([#289](https://github.com/scalastyle/scalastyle/pull/289) -
  [@lonlylocly](https://github.comlonlylocly))
- Add singleLineAllowed option to ForBraceChecker.
  ([#287](https://github.com/scalastyle/scalastyle/pull/287) -
  [@marconilanna](https://github.commarconilanna))
- Include regex parameter to HeaderMatchesChecker.
  ([#288](https://github.com/scalastyle/scalastyle/pull/288) -
  [@Kuroshii](https://github.comKuroshii))
- Add an option to NonASCIICharacterChecker to allow international characters in
  string literals. ([#284](https://github.com/scalastyle/scalastyle/pull/284) -
  [@marconilanna](https://github.commarconilanna))
- Fix NonASCIICharacterChecker to inspect the raw text.
  ([#274](https://github.com/scalastyle/scalastyle/pull/274) -
  [@latkin](https://github.comlatkin))
- Add scala.Any and Object to the list of "object" types.
  ([#282](https://github.com/scalastyle/scalastyle/pull/282) -
  [@nrinaudo](https://github.comnrinaudo))
- Fix #279 NullPointerException when trying to create intermediate directories
  for output.
  ([bb0218e](https://github.com/scalastyle/scalastyle/commit/bb0218e) -
  [@matthewfarwell](https://github.commatthewfarwell))

# Version 1.0.0

SBT:

- Support for sbt 1.0.0
- #65: Add a new "failOnWarning" parameter - fail if there are scalastyle
  warnings, not just on error
- Fix: #47 scalastyleSources does not include all unmanaged sources by default

Additions / bugfixes:

- Fix: #265 Fixes for destructuring in FieldNamesChecker
- Fix: #266 ScalaDocChecker indentStyle & ignoreOverride documentation
  inaccurate

# Version 0.9.0

New rules:

- PackageNamesChecker - check package names against a regular expression
- EmptyInterpolatedStringChecker - check for empty string interpolations
- NoWhitespaceBeforeRightBracketChecker - check for whitespace before right
  brackets
- MethodArgumentNamesChecker - check method arguments against a reguilar
  expression
- OverrideJavaChecker - Check for use of java Override annotation
- NamedArgumentChecker - Checks that argument literals are named

Additions / bugfixes:

- Supports scala 2.12
- Fix: #260 - Not all interpolation types require variables
- Fix: #199 and #255 FieldNamesChecker desctructuring and object fields
- Fix: #253 Enforce ScalaDoc indentation
- Fix: #224 ScalaDocChecker supports comments inheritance
- Fix: #225 ScalaDocChecker takes into account valid constrained type parameter
  declarations
- Fix: #217 Add a CyclomaticComplexityChecker option to ignore "case" keyword
- Add parameter ignoreComments to MethodLengthChecker
- Fix: #204 NullChecker option to tolerate comparisons with null
- Fix: #236 ImportsChecker: allow actual lexicographic sorting
- Fix: #234 Add "exceptions" param for UnderscoreImportChecker
- Merge pull request #153 classParamIndentSize in indentation checker
- BUGFIX Class and Object name check entire name
- Fix: #201 ScalaDocChecker: Add ignoreTokenTypes option
- Fix: #220 Add "ignoreRegex" param for UnderscoreImportChecker
- Fix: #194 Fix indentation check for classes where invocation is mistaken for a
  parameter list
- option to ignore entire lines of whitespace for WhitespaceEndOfLineChecker
- Improvements in error messages

SBT:

- Fix: #45 Fix scalastyleConfig in multi-project builds
- Fix: #52 Upgrade to AutoPlugin
- Add a new "silent" parameter - suppress logging of results to the sbt log

# Version 0.8.0

New rules:

- TodoCommentChecker - tests for presence of TODOs and FIXMEs
- ImportGroupingChecker - checks grouping and ordering of imports
- PatternMatchChecker - checks alignment of arrows in pattern matches

New parameters to existing checkers

- RegexChecker has a `line` parameter which allows line by line regular
  expression matching
- IndentationChecker has `methodParamIndentSize` parameter which allows
  specification of the amount of indentation for multi-line method parameters
- ScalaDocChecker has a `ignoreRegex` parameter into the ScalaDocChecker -
  classes which match are not checked

Other:

- sbt plugin - sources can be specified to scalastyle using the
  scalastyleSources setting - this is by default scalaSource
- sbt plugin - quiet flag is more quiet
- command line - option added to ignore certain files via un regex

- Fix: #159 TextOutput takes account of quiet and verbose
- Fix: #123 False positive in ScalaDocChecker
- Fix: #145 ProcedureDeclarationChecker - a constructor with a body containing
  braces was not correctly handled
- Fix: #33 Cyclomatic complexity - an inner method is not counted as part of a
  method for the cyclomatic complexity calculation
- Fix: #144 // scalastyle:ignore did not work
- Fix: #157 Use scalariform 0.1.7, which fixes some problems with Scala 2.11,
  including #156

- Various documentation fixes

# Version 0.7.0

New rules:

- FieldNameChecker - check the names of fields
- XmlLiteralChecker - check the use of XML literals

Also:

- Fix `SpacesAfterPlusChecker` - only applies to infix expressions #124
- Fix `PublicMethodsHaveTypeChecker` should not flag nested defs #48
- lots of documentation improvements
- maven plugin creates directories if necessary
- Add support for external rules #25 [custom-rules](custom-rules.html)

# Version 0.6.0

New rules:

- IndentationChecker - check the indentation of your code
- NonASCIICharacterChecker - check for use of non-ascii characters

Also:

- Support for 2.11
- sbt plugin - support for `AutoPlugin` #21
- sbt plugin - Add support for running scalastyle over test sources #27
- sbt plugin - Add support for remote config file (downloads once per day) #25
- sbt plugin - fix various logging issues #28
- HeaderMatchesChecker supports regular expressions #120
- scalastyle-batch is now an uberjar, not a zip. See
  [scalastyle-batch.jar](https://oss.sonatype.org/service/local/repositories/releases/content/com/beautiful-scala/scalastyle_2.11/0.6.0/scalastyle_2.11-0.6.0-batch.jar)
- Incorrect error messages from the sbt plugin #117
- Fix `EnsureSingleSpaceAfterTokenChecker` when token is first one on line. #119
- Various bugfixes in the ScalaDocChecker

# Version 0.5.0

New rules:

- DisallowSpaceAfterTokenChecker - check that no space appears after token(s)
- DisallowSpaceBeforeTokenChecker - check that no space appears before token(s)
- EnsureSingleSpaceAfterTokenChecker - check that a space appears after token(s)
- EnsureSingleSpaceBeforeTokenChecker - check that a space appears before
  token(s)
- ScalaDocChecker - checks that scaladoc exists for all members of a class
- SpaceAfterCommentStartChecker - checks that all comment lines start with a
  space

Also:

- End of support for 2.9.x
- End of support for Eclipse indigo, juno. Only kepler now supported. The others
  will still probably work.

Fixed crash on triple quoted interpolation #103

- Uses com.typesafe.config rather than java properties - this may help usage of
  custom checkers
- Removed scopt dependency
- Include stacktrace in error message when checkers throw an exception. #91
- IllegalImportsChecker now has exemptImports parameter
- sbt plugin now uses sbt logging, not println
- Add support for quiet/verbose output in TextOutput

# Version 0.4.0

New rules:

- ForBraceChecker - use braces instead of parens in for comprehensions
- ProcedureDeclarationChecker - check use of def foo(): Unit = {} rather than
  def foo() {}

Also:

- Added info severity level #72
- Can ignore a rule on a single line using // scalastyle:ignore
- Update the cli to scopt 3.2.0 #75
- Fixes MagicNumberCheck issues warning for 0L #69
- Cyclomatic complexity checker now displays the actual figure, not just the
  limit #60
- Added option to ignore line length of import statements in
  FileLineLengthCheckerTest

Maven plugin:

- Configuration file can be URL, classpath (using a dependency) or default
  configuration from Scalastyle jar

sbt plugin:

- Added failOnError setting - if true sbt will fail the build on Scalastyle
  errors #10
- Build for 0.13.0 as well

Eclipse plugin:

- Don't check derived resources #14

# Version 0.3.2

- Bugfixes with BlockImportChecker
- Empty files no longer checked
- Eclipse plugin: Don't check style in resources not on the classpath
- Double click to edit configurations
- Fixed problems with dependency in sbt plugin

# Version 0.3.1

- Dependency problems with maven plugin
- Dependency problems with sbt plugin

# Version 0.3.0

- Support for 2.10
- Skip PublicMethodsHaveTypeChecker for constructors
- Skip PublicMethodsHaveTypeChecker when function body does not exist
- Added ignoreOverride parameter for PublicMethodsHaveTypeChecker, if true,
  don't check methods with override
- For method names, ignore mutators by default (foo=\_())
- Allow declaration of a customID for rules, if a rule has more than one
  instance (for example a regex)
- Add rule for block imports
- Catch usage of ??? operator

# Version 0.2.0

- Redundant if checker - check for if (x) then true else false
- A token regular expression checker - similar to the regular expression
  checker, except that it only detects tokens, so println in a comment won't
  match
- DeprecatedJavaChecker - check usage of @Deprecated as a java annotation
- Empty class checker - warns if an empty class is used
- underscore import checker - warns on use of wildcard imports
- Lowercase pattern matcher checker - warns on use of a lowercase pattern match
  case x => foo, which can cause unexpected behaviour
- duplicated string literals in a file checker.
- Import grouping checker

Also:

- Upgrade to Scala 2.9.2
- An SBT plugin, which generates checkstyle type report xml for jenkins
- Correct handling of file encoding in the maven and Eclipse plugins
- The maven plugin can optionally generate checkstyle type report xml for
  jenkins
- Corrections to the import checker, to cope with import selectors

# Version 0.1.0

The first release of Scalastyle.

The following checkers were added:

- ClassNamesChecker - Check that class names match a regular expression
- CovariantEqualsChecker - Check that classes and objects do not define equals
  without overriding equals(java.lang.Object).
- CyclomaticComplexityChecker - Checks that the cyclomatic complexity of a
  method does exceed a value
- EqualsHashCodeChecker - Check that if a class implements either equals or
  hashCode, it should implement the other
- FileLengthChecker - Check the number of lines in a file
- FileLineLengthChecker - Check the number of characters in a line
- FileTabChecker - Check that there are no tabs in a file
- HeaderMatchesChecker - Check the first lines of each file matches the text
- IfBraceChecker - Checks that if statement have braces
- IllegalImportsChecker - Check that a class does not import certain classes
- MagicNumberChecker - Checks for use of magic numbers
- MethodLengthChecker - Checks that methods do not exceed a maximum length
- MethodNamesChecker - Check that method names match a regular expression
- NewLineAtEofChecker - Checks that a file ends with a newline character
- NoCloneChecker - Check that classes and objects do not define the clone()
  method
- NoFinalizeChecker - Check that classes and objects do not define the
  finalize() method
- NoNewLineAtEofChecker - Checks that a file does not end with a newline
  character
- NoWhitespaceAfterLeftBracketChecker - No whitespace after left bracket '\['
- NoWhitespaceBeforeLeftBracketChecker - No whitespace before left bracket '\['
- NullChecker - Check that null is not used
- NumberOfMethodsInTypeChecker - Check that a class / trait / object does not
  have too many methods
- NumberOfTypesChecker - Checks that there are not too many types declared in a
  file
- ObjectNamesChecker - Check that object names match a regular expression
- PackageObjectNamesChecker - Check that package object names match a regular
  expression
- ParameterNumberChecker - Maximum number of parameters for a method
- PublicMethodsHaveTypeChecker - Check that a method has an explicit return
  type, it is not inferred
- RegexChecker - Checks that a regular expression cannot be matched, if found
  reports this
- ReturnChecker - Check that return is not used
- SimplifyBooleanExpressionChecker - Boolean expression can be simplified
- SpacesAfterPlusChecker - Check that the plus sign is followed by a space
- SpacesBeforePlusChecker - Check that the plus sign is preceded by a space
- StructuralTypeChecker - Check that structural types are not used.
- UppercaseLChecker - Checks that if a long literal is used, then an uppercase L
  is used
- VarFieldChecker - Checks that classes and objects do not define mutable fields
- VarLocalChecker - Checks that functions do not define mutable variables
- WhileChecker - Checks that while is not used
- WhitespaceEndOfLineChecker - Check that there is no trailing whitespace at the
  end of lines

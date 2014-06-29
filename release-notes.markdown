---
layout: scalastyle
title: "Scalastyle - Release notes"
---

Version 0.5.0
=============

New rules:

* DisallowSpaceAfterTokenChecker - check that no space appears after token(s)
* DisallowSpaceBeforeTokenChecker - check that no space appears before token(s)
* EnsureSingleSpaceAfterTokenChecker - check that a space appears after token(s)
* EnsureSingleSpaceBeforeTokenChecker - check that a space appears before token(s)
* ScalaDocChecker - checks that scaladoc exists for all members of a class
* SpaceAfterCommentStartChecker - checks that all comment lines start with a space

Also:


* End of support for 2.9.x
* End of support for Eclipse indigo, juno. Only kepler now supported. The others will still probably work.

 Fixed crash on triple quoted interpolation #103
* Uses com.typesafe.config rather than java properties - this may help usage of custom checkers
* Removed scopt dependency
* Include stacktrace in error message when checkers throw an exception. #91
* IllegalImportsChecker now has exemptImports parameter
* sbt plugin now uses sbt logging, not println
* Add support for quiet/verbose output in TextOutput

Version 0.4.0
=============

New rules:

* ForBraceChecker - use braces instead of parens in for comprehensions
* ProcedureDeclarationChecker - check use of def foo(): Unit = {} rather than def foo() {}

Also:

* Added info severity level #72
* Can ignore a rule on a single line using // scalastyle:ignore
* Update the cli to scopt 3.2.0 #75
* Fixes MagicNumberCheck issues warning for 0L #69
* Cyclomatic complexity checker now displays the actual figure, not just the limit #60
* Added option to ignore line length of import statements in FileLineLengthCheckerTest

Maven plugin:

* Configuration file can be URL, classpath (using a dependency) or default configuration from Scalastyle jar

sbt plugin:

* Added failOnError setting - if true sbt will fail the build on Scalastyle errors #10
* Build for 0.13.0 as well

Eclipse plugin:

* Don't check derived resources #14

Version 0.3.2
=============

* Bugfixes with BlockImportChecker
* Empty files no longer checked
* Eclipse plugin: Don't check style in resources not on the classpath
* Double click to edit configurations
* Fixed problems with dependency in sbt plugin

Version 0.3.1
=============

* Dependency problems with maven plugin
* Dependency problems with sbt plugin

Version 0.3.0
=============

* Support for 2.10
* Skip PublicMethodsHaveTypeChecker for constructors
* Skip PublicMethodsHaveTypeChecker when function body does not exist
* Added ignoreOverride parameter for PublicMethodsHaveTypeChecker, if true, don't check methods with override
* For method names, ignore mutators by default (foo=_())
* Allow declaration of a customID for rules, if a rule has more than one instance (for example a regex)
* Add rule for block imports
* Catch usage of ??? operator

Version 0.2.0
=============

* Redundant if checker - check for if (x) then true else false
* A token regular expression checker - similar to the regular expression checker, except that it only detects tokens, so println in a comment won't match
* DeprecatedJavaChecker - check usage of @Deprecated as a java annotation
* Empty class checker - warns if an empty class is used
* underscore import checker - warns on use of wildcard imports
* Lowercase pattern matcher checker - warns on use of a lowercase pattern match case x => foo, which can cause unexpected behaviour
* duplicated string literals in a file checker.
* Import grouping checker

Also:

* Upgrade to Scala 2.9.2
* An SBT plugin, which generates checkstyle type report xml for jenkins
* Correct handling of file encoding in the maven and Eclipse plugins
* The maven plugin can optionally generate checkstyle type report xml for jenkins
* Corrections to the import checker, to cope with import selectors

Version 0.1.0
=============

The first release of Scalastyle.

The following checkers were added:

* ClassNamesChecker - Check that class names match a regular expression
* CovariantEqualsChecker - Check that classes and objects do not define equals without overriding equals(java.lang.Object).
* CyclomaticComplexityChecker - Checks that the cyclomatic complexity of a method does exceed a value
* EqualsHashCodeChecker - Check that if a class implements either equals or hashCode, it should implement the other
* FileLengthChecker - Check the number of lines in a file
* FileLineLengthChecker - Check the number of characters in a line
* FileTabChecker - Check that there are no tabs in a file
* HeaderMatchesChecker - Check the first lines of each file matches the text
* IfBraceChecker - Checks that if statement have braces
* IllegalImportsChecker - Check that a class does not import certain classes
* MagicNumberChecker - Checks for use of magic numbers
* MethodLengthChecker - Checks that methods do not exceed a maximum length
* MethodNamesChecker - Check that method names match a regular expression
* NewLineAtEofChecker - Checks that a file ends with a newline character
* NoCloneChecker - Check that classes and objects do not define the clone() method
* NoFinalizeChecker - Check that classes and objects do not define the finalize() method
* NoNewLineAtEofChecker - Checks that a file does not end with a newline character
* NoWhitespaceAfterLeftBracketChecker - No whitespace after left bracket '\['
* NoWhitespaceBeforeLeftBracketChecker - No whitespace before left bracket '\['
* NullChecker - Check that null is not used
* NumberOfMethodsInTypeChecker - Check that a class / trait / object does not have too many methods
* NumberOfTypesChecker - Checks that there are not too many types declared in a file
* ObjectNamesChecker - Check that object names match a regular expression
* PackageObjectNamesChecker - Check that package object names match a regular expression
* ParameterNumberChecker - Maximum number of parameters for a method
* PublicMethodsHaveTypeChecker - Check that a method has an explicit return type, it is not inferred
* RegexChecker - Checks that a regular expression cannot be matched, if found reports this
* ReturnChecker - Check that return is not used
* SimplifyBooleanExpressionChecker - Boolean expression can be simplified
* SpacesAfterPlusChecker - Check that the plus sign is followed by a space
* SpacesBeforePlusChecker - Check that the plus sign is preceded by a space
* StructuralTypeChecker - Check that structural types are not used.
* UppercaseLChecker - Checks that if a long literal is used, then an uppercase L is used
* VarFieldChecker - Checks that classes and objects do not define mutable fields
* VarLocalChecker - Checks that functions do not define mutable variables
* WhileChecker - Checks that while is not used
* WhitespaceEndOfLineChecker - Check that there is no trailing whitespace at the end of lines


---
layout: scalastyle
title: "Scalastyle: Implemented Rules"
---

There are 58 rules which are currently implemented:

| Checker | Description  |
| ------------- | ------------- |
|[org.scalastyle.file.FileLengthChecker](#org_scalastyle_file_FileLengthChecker)|Check the number of lines in a file|
|[org.scalastyle.file.FileLineLengthChecker](#org_scalastyle_file_FileLineLengthChecker)|Check the number of characters in a line|
|[org.scalastyle.file.FileTabChecker](#org_scalastyle_file_FileTabChecker)|Check that there are no tabs in a file|
|[org.scalastyle.file.HeaderMatchesChecker](#org_scalastyle_file_HeaderMatchesChecker)|Check the first lines of each file matches the text|
|[org.scalastyle.file.IndentationChecker](#org_scalastyle_file_IndentationChecker)|Checks that lines are indented by a multiple of the tab size|
|[org.scalastyle.file.NewLineAtEofChecker](#org_scalastyle_file_NewLineAtEofChecker)|Checks that a file ends with a newline character|
|[org.scalastyle.file.NoNewLineAtEofChecker](#org_scalastyle_file_NoNewLineAtEofChecker)|Checks that a file does not end with a newline character|
|[org.scalastyle.file.RegexChecker](#org_scalastyle_file_RegexChecker)|Checks that a regular expression cannot be matched, if found reports this|
|[org.scalastyle.file.WhitespaceEndOfLineChecker](#org_scalastyle_file_WhitespaceEndOfLineChecker)|Check that there is no trailing whitespace at the end of lines|
|[org.scalastyle.scalariform.BlockImportChecker](#org_scalastyle_scalariform_BlockImportChecker)|Checks that block imports are not used.|
|[org.scalastyle.scalariform.ClassNamesChecker](#org_scalastyle_scalariform_ClassNamesChecker)|Check that class names match a regular expression|
|[org.scalastyle.scalariform.ClassTypeParameterChecker](#org_scalastyle_scalariform_ClassTypeParameterChecker)|Checks that type parameter to a class matches a regular expression|
|[org.scalastyle.scalariform.CovariantEqualsChecker](#org_scalastyle_scalariform_CovariantEqualsChecker)|Check that classes and objects do not define equals without overriding equals(java.lang.Object).|
|[org.scalastyle.scalariform.CyclomaticComplexityChecker](#org_scalastyle_scalariform_CyclomaticComplexityChecker)|Checks that the cyclomatic complexity of a method does exceed a value|
|[org.scalastyle.scalariform.DeprecatedJavaChecker](#org_scalastyle_scalariform_DeprecatedJavaChecker)|Checks that Java @Deprecated is not used, Scala @deprecated should be used instead|
|[org.scalastyle.scalariform.DisallowSpaceAfterTokenChecker](#org_scalastyle_scalariform_DisallowSpaceAfterTokenChecker)|Disallow space after certain token(s)|
|[org.scalastyle.scalariform.DisallowSpaceBeforeTokenChecker](#org_scalastyle_scalariform_DisallowSpaceBeforeTokenChecker)|Disallow space before certain token(s)|
|[org.scalastyle.scalariform.EmptyClassChecker](#org_scalastyle_scalariform_EmptyClassChecker)|If a class/trait has no members, the braces are unnecessary|
|[org.scalastyle.scalariform.EnsureSingleSpaceAfterTokenChecker](#org_scalastyle_scalariform_EnsureSingleSpaceAfterTokenChecker)|Ensure single space after certain token(s)|
|[org.scalastyle.scalariform.EnsureSingleSpaceBeforeTokenChecker](#org_scalastyle_scalariform_EnsureSingleSpaceBeforeTokenChecker)|Ensure single space before certain token(s)|
|[org.scalastyle.scalariform.EqualsHashCodeChecker](#org_scalastyle_scalariform_EqualsHashCodeChecker)|Check that if a class implements either equals or hashCode, it should implement the other|
|[org.scalastyle.scalariform.ForBraceChecker](#org_scalastyle_scalariform_ForBraceChecker)|Checks that braces are used in for comprehensions|
|[org.scalastyle.scalariform.IfBraceChecker](#org_scalastyle_scalariform_IfBraceChecker)|Checks that if statements have braces|
|[org.scalastyle.scalariform.IllegalImportsChecker](#org_scalastyle_scalariform_IllegalImportsChecker)|Check that a class does not import certain classes|
|[org.scalastyle.scalariform.ImportGroupingChecker](#org_scalastyle_scalariform_ImportGroupingChecker)|Checks that imports are grouped together, not throughout the file|
|[org.scalastyle.scalariform.LowercasePatternMatchChecker](#org_scalastyle_scalariform_LowercasePatternMatchChecker)|Checks that a case statement pattern match is not lower case, as this can cause confusion|
|[org.scalastyle.scalariform.MagicNumberChecker](#org_scalastyle_scalariform_MagicNumberChecker)|Checks for use of magic numbers|
|[org.scalastyle.scalariform.MethodLengthChecker](#org_scalastyle_scalariform_MethodLengthChecker)|Checks that methods do not exceed a maximum length|
|[org.scalastyle.scalariform.MethodNamesChecker](#org_scalastyle_scalariform_MethodNamesChecker)|Check that method names match a regular expression|
|[org.scalastyle.scalariform.MultipleStringLiteralsChecker](#org_scalastyle_scalariform_MultipleStringLiteralsChecker)|Checks that a string literal does not appear multiple times|
|[org.scalastyle.scalariform.NoCloneChecker](#org_scalastyle_scalariform_NoCloneChecker)|Check that classes and objects do not define the clone() method|
|[org.scalastyle.scalariform.NoFinalizeChecker](#org_scalastyle_scalariform_NoFinalizeChecker)|Check that classes and objects do not define the finalize() method|
|[org.scalastyle.scalariform.NoWhitespaceAfterLeftBracketChecker](#org_scalastyle_scalariform_NoWhitespaceAfterLeftBracketChecker)|No whitespace after left bracket '\['|
|[org.scalastyle.scalariform.NoWhitespaceBeforeLeftBracketChecker](#org_scalastyle_scalariform_NoWhitespaceBeforeLeftBracketChecker)|No whitespace before left bracket '\['|
|[org.scalastyle.scalariform.NonASCIICharacterChecker](#org_scalastyle_scalariform_NonASCIICharacterChecker)|Some editors are unfriendly to non ascii characters.|
|[org.scalastyle.scalariform.NotImplementedErrorUsage](#org_scalastyle_scalariform_NotImplementedErrorUsage)|Checks that the code does not have ??? operators.|
|[org.scalastyle.scalariform.NullChecker](#org_scalastyle_scalariform_NullChecker)|Check that null is not used|
|[org.scalastyle.scalariform.NumberOfMethodsInTypeChecker](#org_scalastyle_scalariform_NumberOfMethodsInTypeChecker)|Check that a class / trait / object does not have too many methods|
|[org.scalastyle.scalariform.NumberOfTypesChecker](#org_scalastyle_scalariform_NumberOfTypesChecker)|Checks that there are not too many types declared in a file|
|[org.scalastyle.scalariform.ObjectNamesChecker](#org_scalastyle_scalariform_ObjectNamesChecker)|Check that object names match a regular expression|
|[org.scalastyle.scalariform.PackageObjectNamesChecker](#org_scalastyle_scalariform_PackageObjectNamesChecker)|Check that package object names match a regular expression|
|[org.scalastyle.scalariform.ParameterNumberChecker](#org_scalastyle_scalariform_ParameterNumberChecker)|Maximum number of parameters for a method|
|[org.scalastyle.scalariform.ProcedureDeclarationChecker](#org_scalastyle_scalariform_ProcedureDeclarationChecker)|Use a : Unit = for procedure declarations|
|[org.scalastyle.scalariform.PublicMethodsHaveTypeChecker](#org_scalastyle_scalariform_PublicMethodsHaveTypeChecker)|Check that a method has an explicit return type, it is not inferred|
|[org.scalastyle.scalariform.RedundantIfChecker](#org_scalastyle_scalariform_RedundantIfChecker)|Checks that if expressions are not redundant, i.e. easily replaced by a variant of the condition|
|[org.scalastyle.scalariform.ReturnChecker](#org_scalastyle_scalariform_ReturnChecker)|Check that return is not used|
|[org.scalastyle.scalariform.ScalaDocChecker](#org_scalastyle_scalariform_ScalaDocChecker)|Checks that the ScalaDoc on documentable members is well-formed|
|[org.scalastyle.scalariform.SimplifyBooleanExpressionChecker](#org_scalastyle_scalariform_SimplifyBooleanExpressionChecker)|Boolean expression can be simplified|
|[org.scalastyle.scalariform.SpaceAfterCommentStartChecker](#org_scalastyle_scalariform_SpaceAfterCommentStartChecker)|Checks a space after the start of the comment.|
|[org.scalastyle.scalariform.SpacesAfterPlusChecker](#org_scalastyle_scalariform_SpacesAfterPlusChecker)|Check that the plus sign is followed by a space|
|[org.scalastyle.scalariform.SpacesBeforePlusChecker](#org_scalastyle_scalariform_SpacesBeforePlusChecker)|Check that the plus sign is preceded by a space|
|[org.scalastyle.scalariform.StructuralTypeChecker](#org_scalastyle_scalariform_StructuralTypeChecker)|Check that structural types are not used.|
|[org.scalastyle.scalariform.TokenChecker](#org_scalastyle_scalariform_TokenChecker)|Checks that a regular expression cannot be matched in a token, if found reports this|
|[org.scalastyle.scalariform.UnderscoreImportChecker](#org_scalastyle_scalariform_UnderscoreImportChecker)|Avoid wildcard imports|
|[org.scalastyle.scalariform.UppercaseLChecker](#org_scalastyle_scalariform_UppercaseLChecker)|Checks that if a long literal is used, then an uppercase L is used|
|[org.scalastyle.scalariform.VarFieldChecker](#org_scalastyle_scalariform_VarFieldChecker)|Checks that classes and objects do not define mutable fields|
|[org.scalastyle.scalariform.VarLocalChecker](#org_scalastyle_scalariform_VarLocalChecker)|Checks that functions do not define mutable variables|
|[org.scalastyle.scalariform.WhileChecker](#org_scalastyle_scalariform_WhileChecker)|Checks that while is not used|

<a name="org_scalastyle_file_FileLengthChecker" />

### org.scalastyle.file.FileLengthChecker - Check the number of lines in a file

 * id - file.size.limit
 * description - Check the number of lines in a file
 * class - org.scalastyle.file.FileLengthChecker
 * default level - WarningLevel

#### Justification
Files which are too long can be hard to read and understand.

#### Parameters
<table width="80%"><tr><th>Parameter</th><th>Description</th><th>Type</th><th>Default Value</th></tr><tr><td>maxFileLength</td>
								<td>Maximum file length</td>
								<td>integer</td>
								<td>1500</td>
								</tr></table>


### Example configuration
<pre>&lt;check enabled=&quot;true&quot; class=&quot;org.scalastyle.file.FileLengthChecker&quot; level=&quot;warning&quot;&gt;
 &lt;parameters&gt;
  &lt;parameter name=&quot;maxFileLength&quot;&gt;800&lt;/parameter&gt;
 &lt;/parameters&gt;
&lt;/check&gt;</pre>
<a name="org_scalastyle_file_FileLineLengthChecker" />

### org.scalastyle.file.FileLineLengthChecker - Check the number of characters in a line

 * id - line.size.limit
 * description - Check the number of characters in a line
 * class - org.scalastyle.file.FileLineLengthChecker
 * default level - WarningLevel

#### Justification
Lines that are too long can be hard to read and horizontal scrolling is annoying.

#### Parameters
<table width="80%"><tr><th>Parameter</th><th>Description</th><th>Type</th><th>Default Value</th></tr><tr><td>maxLineLength</td>
								<td>Maximum line length</td>
								<td>integer</td>
								<td>160</td>
								</tr><tr><td>tabSize</td>
								<td>Tab size</td>
								<td>integer</td>
								<td>4</td>
								</tr><tr><td>ignoreImports</td>
								<td>Ignore import statements</td>
								<td>boolean</td>
								<td>false</td>
								</tr></table>


### Example configuration
<pre>&lt;check enabled=&quot;true&quot; class=&quot;org.scalastyle.file.FileLineLengthChecker&quot; level=&quot;warning&quot;&gt;
 &lt;parameters&gt;
  &lt;parameter default=&quot;100&quot; type=&quot;integer&quot; name=&quot;maxLineLength&quot;/&gt;
  &lt;parameter default=&quot;2&quot; type=&quot;integer&quot; name=&quot;tabSize&quot;/&gt;
  &lt;parameter default=&quot;true&quot; type=&quot;boolean&quot; name=&quot;ignoreImports&quot;/&gt;
 &lt;/parameters&gt;
&lt;/check&gt;</pre>
<a name="org_scalastyle_file_FileTabChecker" />

### org.scalastyle.file.FileTabChecker - Check that there are no tabs in a file

 * id - line.contains.tab
 * description - Check that there are no tabs in a file
 * class - org.scalastyle.file.FileTabChecker
 * default level - WarningLevel

#### Parameters
No parameters


### Example configuration
TBD
<a name="org_scalastyle_file_HeaderMatchesChecker" />

### org.scalastyle.file.HeaderMatchesChecker - Check the first lines of each file matches the text

 * id - header.matches
 * description - Check the first lines of each file matches the text
 * class - org.scalastyle.file.HeaderMatchesChecker
 * default level - WarningLevel

#### Justification
A lot of projects require a header with a copyright notice, or they require a license in each file. This does a simple text comparison between the header and the first lines of the file.
  You can have multiple lines, but make sure you surround the text with a CDATA section. You can also specify a regular expression, as long as you set the regex parameter to true.

#### Parameters
<table width="80%"><tr><th>Parameter</th><th>Description</th><th>Type</th><th>Default Value</th></tr><tr><td>header</td>
								<td>Header</td>
								<td>string</td>
								<td></td>
								</tr></table>


### Example configuration
<pre>&lt;check enabled=&quot;true&quot; class=&quot;org.scalastyle.file.HeaderMatchesChecker&quot; level=&quot;warning&quot;&gt;
 &lt;parameters&gt;
  &lt;parameter name=&quot;regex&quot;&gt;false&lt;/parameter&gt;
  &lt;parameter name=&quot;header&quot;&gt;// Copyright (C) 2011-2012 the original author or authors.&lt;/parameter&gt;
 &lt;/parameters&gt;
&lt;/check&gt;</pre>
or
<pre>&lt;check enabled=&quot;true&quot; class=&quot;org.scalastyle.file.HeaderMatchesChecker&quot; level=&quot;warning&quot;&gt;
 &lt;parameters&gt;
  &lt;parameter name=&quot;regex&quot;&gt;true&lt;/parameter&gt;
  &lt;parameter name=&quot;header&quot;&gt;// Copyright (C) (?:\d{4}-)?\d{4} the original author or authors.&lt;/parameter&gt;
 &lt;/parameters&gt;
&lt;/check&gt;</pre>
<a name="org_scalastyle_file_IndentationChecker" />

### org.scalastyle.file.IndentationChecker - Checks that lines are indented by a multiple of the tab size

 * id - indentation
 * description - Checks that lines are indented by a multiple of the tab size
 * class - org.scalastyle.file.IndentationChecker
 * default level - WarningLevel

#### Parameters
<table width="80%"><tr><th>Parameter</th><th>Description</th><th>Type</th><th>Default Value</th></tr><tr><td>tabSize</td>
								<td>Tab size</td>
								<td>integer</td>
								<td>2</td>
								</tr></table>


### Example configuration
TBD
<a name="org_scalastyle_file_NewLineAtEofChecker" />

### org.scalastyle.file.NewLineAtEofChecker - Checks that a file ends with a newline character

 * id - newline.at.eof
 * description - Checks that a file ends with a newline character
 * class - org.scalastyle.file.NewLineAtEofChecker
 * default level - WarningLevel

#### Justification
Some version control systems don't cope well with files which don't end with a newline character.

#### Parameters
No parameters


### Example configuration
<pre>&lt;check enabled=&quot;true&quot; class=&quot;org.scalastyle.file.NewLineAtEofChecker&quot; level=&quot;warning&quot;/&gt;</pre>
<a name="org_scalastyle_file_NoNewLineAtEofChecker" />

### org.scalastyle.file.NoNewLineAtEofChecker - Checks that a file does not end with a newline character

 * id - no.newline.at.eof
 * description - Checks that a file does not end with a newline character
 * class - org.scalastyle.file.NoNewLineAtEofChecker
 * default level - WarningLevel

#### Justification
Because Mirco Dotta wanted it.

#### Parameters
No parameters


### Example configuration
<pre>&lt;check enabled=&quot;true&quot; class=&quot;org.scalastyle.file.NoNewlineAtEofChecker&quot; level=&quot;warning&quot;/&gt;</pre>
<a name="org_scalastyle_file_RegexChecker" />

### org.scalastyle.file.RegexChecker - Checks that a regular expression cannot be matched, if found reports this

 * id - regex
 * description - Checks that a regular expression cannot be matched, if found reports this
 * class - org.scalastyle.file.RegexChecker
 * default level - WarningLevel

#### Parameters
<table width="80%"><tr><th>Parameter</th><th>Description</th><th>Type</th><th>Default Value</th></tr><tr><td>regex</td>
								<td>Regular expression</td>
								<td>string</td>
								<td></td>
								</tr></table>


### Example configuration
<pre>&lt;check enabled=&quot;true&quot; class=&quot;org.scalastyle.file.RegexChecker&quot; level=&quot;warning&quot;&gt;
 &lt;parameters&gt;
  &lt;parameter name=&quot;regex&quot;&gt;(?m)^\s*$(\r|)\n^\s*$(\r|)\n&lt;/parameter&gt;
 &lt;/parameters&gt;
 &lt;customMessage&gt;No double blank lines&lt;/customMessage&gt;
&lt;/check&gt;</pre>
<a name="org_scalastyle_file_WhitespaceEndOfLineChecker" />

### org.scalastyle.file.WhitespaceEndOfLineChecker - Check that there is no trailing whitespace at the end of lines

 * id - whitespace.end.of.line
 * description - Check that there is no trailing whitespace at the end of lines
 * class - org.scalastyle.file.WhitespaceEndOfLineChecker
 * default level - WarningLevel

#### Parameters
No parameters


### Example configuration
TBD
<a name="org_scalastyle_scalariform_BlockImportChecker" />

### org.scalastyle.scalariform.BlockImportChecker - Checks that block imports are not used.

 * id - block.import
 * description - Checks that block imports are not used.
 * class - org.scalastyle.scalariform.BlockImportChecker
 * default level - WarningLevel

#### Justification
Block imports can lead to annoying merge errors in large code bases that are maintained by lot of developers. This rule allows to ensure that only single imports are used in order to minimize merge errors in import declarations.

#### Parameters
No parameters


### Example configuration
<pre>&lt;check enabled=&quot;true&quot; class=&quot;org.scalastyle.scalariform.BlockImportChecker&quot; level=&quot;warning&quot;/&gt;</pre>
<a name="org_scalastyle_scalariform_ClassNamesChecker" />

### org.scalastyle.scalariform.ClassNamesChecker - Check that class names match a regular expression

 * id - class.name
 * description - Check that class names match a regular expression
 * class - org.scalastyle.scalariform.ClassNamesChecker
 * default level - WarningLevel

#### Parameters
<table width="80%"><tr><th>Parameter</th><th>Description</th><th>Type</th><th>Default Value</th></tr><tr><td>regex</td>
								<td>Regular expression</td>
								<td>string</td>
								<td>^[A-Z][A-Za-z]*$</td>
								</tr></table>


### Example configuration
TBD
<a name="org_scalastyle_scalariform_ClassTypeParameterChecker" />

### org.scalastyle.scalariform.ClassTypeParameterChecker - Checks that type parameter to a class matches a regular expression

 * id - class.type.parameter.name
 * description - Checks that type parameter to a class matches a regular expression
 * class - org.scalastyle.scalariform.ClassTypeParameterChecker
 * default level - WarningLevel

#### Justification
Scala generic type names are generally single upper case letters. This check checks for classes and traits.

 Note that this check only checks the innermost type parameter, to allow for List\[T\].

#### Parameters
<table width="80%"><tr><th>Parameter</th><th>Description</th><th>Type</th><th>Default Value</th></tr><tr><td>regex</td>
								<td>Regular expression</td>
								<td>string</td>
								<td>^[A-Z_]$</td>
								</tr></table>


### Example configuration
<pre>&lt;check enabled=&quot;true&quot; class=&quot;org.scalastyle.scalariform.ClassTypeParameterChecker&quot; level=&quot;warning&quot;&gt;
 &lt;parameters&gt;
  &lt;parameter name=&quot;regex&quot;&gt;^[A-Z_]$&lt;/parameter&gt;
 &lt;/parameters&gt;
&lt;/check&gt;</pre>
<a name="org_scalastyle_scalariform_CovariantEqualsChecker" />

### org.scalastyle.scalariform.CovariantEqualsChecker - Check that classes and objects do not define equals without overriding equals(java.lang.Object).

 * id - covariant.equals
 * description - Check that classes and objects do not define equals without overriding equals(java.lang.Object).
 * class - org.scalastyle.scalariform.CovariantEqualsChecker
 * default level - WarningLevel

#### Parameters
No parameters


### Example configuration
TBD
<a name="org_scalastyle_scalariform_CyclomaticComplexityChecker" />

### org.scalastyle.scalariform.CyclomaticComplexityChecker - Checks that the cyclomatic complexity of a method does exceed a value

 * id - cyclomatic.complexity
 * description - Checks that the cyclomatic complexity of a method does exceed a value
 * class - org.scalastyle.scalariform.CyclomaticComplexityChecker
 * default level - WarningLevel

#### Justification
If the code is too complex, then this can make code hard to read.

#### Parameters
<table width="80%"><tr><th>Parameter</th><th>Description</th><th>Type</th><th>Default Value</th></tr><tr><td>maximum</td>
								<td>Maximum</td>
								<td>integer</td>
								<td>10</td>
								</tr></table>


### Example configuration
<pre>&lt;check enabled=&quot;true&quot; class=&quot;org.scalastyle.scalariform.CyclomaticComplexityChecker&quot; level=&quot;warning&quot;&gt;
 &lt;parameters&gt;
  &lt;parameter name=&quot;maximum&quot;&gt;10&lt;/parameter&gt;
 &lt;/parameters&gt;
&lt;/check&gt;</pre>
<a name="org_scalastyle_scalariform_DeprecatedJavaChecker" />

### org.scalastyle.scalariform.DeprecatedJavaChecker - Checks that Java @Deprecated is not used, Scala @deprecated should be used instead

 * id - deprecated.java
 * description - Checks that Java @Deprecated is not used, Scala @deprecated should be used instead
 * class - org.scalastyle.scalariform.DeprecatedJavaChecker
 * default level - WarningLevel

#### Justification
You should be using the Scala @deprecated instead.

#### Parameters
No parameters


### Example configuration
<pre>&lt;check enabled=&quot;true&quot; class=&quot;org.scalastyle.scalariform.DeprecatedJavaChecker&quot; level=&quot;warning&quot;/&gt;</pre>
<a name="org_scalastyle_scalariform_DisallowSpaceAfterTokenChecker" />

### org.scalastyle.scalariform.DisallowSpaceAfterTokenChecker - Disallow space after certain token(s)

 * id - disallow.space.after.token
 * description - Disallow space after certain token(s)
 * class - org.scalastyle.scalariform.DisallowSpaceAfterTokenChecker
 * default level - WarningLevel

#### Parameters
No parameters


### Example configuration
TBD
<a name="org_scalastyle_scalariform_DisallowSpaceBeforeTokenChecker" />

### org.scalastyle.scalariform.DisallowSpaceBeforeTokenChecker - Disallow space before certain token(s)

 * id - disallow.space.before.token
 * description - Disallow space before certain token(s)
 * class - org.scalastyle.scalariform.DisallowSpaceBeforeTokenChecker
 * default level - WarningLevel

#### Parameters
No parameters


### Example configuration
TBD
<a name="org_scalastyle_scalariform_EmptyClassChecker" />

### org.scalastyle.scalariform.EmptyClassChecker - If a class/trait has no members, the braces are unnecessary

 * id - empty.class
 * description - If a class/trait has no members, the braces are unnecessary
 * class - org.scalastyle.scalariform.EmptyClassChecker
 * default level - WarningLevel

#### Justification
If a class / trait has no members, then braces are unnecessary, and can be removed.

#### Parameters
No parameters


### Example configuration
<pre>&lt;check enabled=&quot;true&quot; class=&quot;org.scalastyle.scalariform.EmptyClassChecker&quot; level=&quot;warning&quot;/&gt;</pre>
<a name="org_scalastyle_scalariform_EnsureSingleSpaceAfterTokenChecker" />

### org.scalastyle.scalariform.EnsureSingleSpaceAfterTokenChecker - Ensure single space after certain token(s)

 * id - ensure.single.space.after.token
 * description - Ensure single space after certain token(s)
 * class - org.scalastyle.scalariform.EnsureSingleSpaceAfterTokenChecker
 * default level - WarningLevel

#### Parameters
No parameters


### Example configuration
TBD
<a name="org_scalastyle_scalariform_EnsureSingleSpaceBeforeTokenChecker" />

### org.scalastyle.scalariform.EnsureSingleSpaceBeforeTokenChecker - Ensure single space before certain token(s)

 * id - ensure.single.space.before.token
 * description - Ensure single space before certain token(s)
 * class - org.scalastyle.scalariform.EnsureSingleSpaceBeforeTokenChecker
 * default level - WarningLevel

#### Parameters
No parameters


### Example configuration
TBD
<a name="org_scalastyle_scalariform_EqualsHashCodeChecker" />

### org.scalastyle.scalariform.EqualsHashCodeChecker - Check that if a class implements either equals or hashCode, it should implement the other

 * id - equals.hash.code
 * description - Check that if a class implements either equals or hashCode, it should implement the other
 * class - org.scalastyle.scalariform.EqualsHashCodeChecker
 * default level - WarningLevel

#### Parameters
No parameters


### Example configuration
TBD
<a name="org_scalastyle_scalariform_ForBraceChecker" />

### org.scalastyle.scalariform.ForBraceChecker - Checks that braces are used in for comprehensions

 * id - for.brace
 * description - Checks that braces are used in for comprehensions
 * class - org.scalastyle.scalariform.ForBraceChecker
 * default level - WarningLevel

#### Justification
Usage of braces (rather than parentheses) within a for comprehension mean that you don't have to specify a semi-colon at the end of every line:

    for {      // braces
      t <- List(1,2,3)
      if (i % 2 == 0)
    } yield t

  is preferred to

    for (      // parentheses
      t <- List(1,2,3);
      if (i % 2 == 0)
    ) yield t

  To fix it, replace the () with {}. And then remove the ; at the end of the lines.

#### Parameters
No parameters


### Example configuration
<pre>&lt;check enabled=&quot;true&quot; class=&quot;org.scalastyle.scalariform.ForBraceChecker&quot; level=&quot;warning&quot;/&gt;</pre>
<a name="org_scalastyle_scalariform_IfBraceChecker" />

### org.scalastyle.scalariform.IfBraceChecker - Checks that if statements have braces

 * id - if.brace
 * description - Checks that if statements have braces
 * class - org.scalastyle.scalariform.IfBraceChecker
 * default level - WarningLevel

#### Justification
Some people find if clauses with braces easier to read.

#### Parameters
<table width="80%"><tr><th>Parameter</th><th>Description</th><th>Type</th><th>Default Value</th></tr><tr><td>singleLineAllowed</td>
								<td>Single Line Allowed</td>
								<td>boolean</td>
								<td>true</td>
								</tr><tr><td>doubleLineAllowed</td>
								<td>Double Line Allowed</td>
								<td>boolean</td>
								<td>false</td>
								</tr></table>


### Example configuration
<pre>&lt;check enabled=&quot;true&quot; class=&quot;org.scalastyle.scalariform.IfBraceChecker&quot; level=&quot;warning&quot;&gt;
 &lt;parameters&gt;
  &lt;parameter name=&quot;singleLineAllowed&quot;&gt;true&lt;/parameter&gt;
  &lt;parameter name=&quot;doubleLineAllowed&quot;&gt;false&lt;/parameter&gt;
 &lt;/parameters&gt;
&lt;/check&gt;</pre>
<a name="org_scalastyle_scalariform_IllegalImportsChecker" />

### org.scalastyle.scalariform.IllegalImportsChecker - Check that a class does not import certain classes

 * id - illegal.imports
 * description - Check that a class does not import certain classes
 * class - org.scalastyle.scalariform.IllegalImportsChecker
 * default level - WarningLevel

#### Parameters
<table width="80%"><tr><th>Parameter</th><th>Description</th><th>Type</th><th>Default Value</th></tr><tr><td>illegalImports</td>
								<td>Illegal Imports</td>
								<td>string</td>
								<td>sun._,java.awt._</td>
								</tr></table>


### Example configuration
TBD
<a name="org_scalastyle_scalariform_ImportGroupingChecker" />

### org.scalastyle.scalariform.ImportGroupingChecker - Checks that imports are grouped together, not throughout the file

 * id - import.grouping
 * description - Checks that imports are grouped together, not throughout the file
 * class - org.scalastyle.scalariform.ImportGroupingChecker
 * default level - WarningLevel

#### Justification
If imports are spread throughout the file, knowing what is in scope at any one place can be difficult to work out.

#### Parameters
No parameters


### Example configuration
<pre>&lt;check enabled=&quot;true&quot; class=&quot;org.scalastyle.scalariform.ImportGroupingChecker&quot; level=&quot;warning&quot;/&gt;</pre>
<a name="org_scalastyle_scalariform_LowercasePatternMatchChecker" />

### org.scalastyle.scalariform.LowercasePatternMatchChecker - Checks that a case statement pattern match is not lower case, as this can cause confusion

 * id - lowercase.pattern.match
 * description - Checks that a case statement pattern match is not lower case, as this can cause confusion
 * class - org.scalastyle.scalariform.LowercasePatternMatchChecker
 * default level - WarningLevel

#### Justification
A lower case pattern match clause with no other tokens is the same as \_; this is not true for patterns which start with an upper
  case letter. This can cause confusion, and may not be what was intended:

    val foo = "foo"
    val Bar = "bar"
    "bar" match { case Bar => "we got bar" }   // result = "we got bar"
    "bar" match { case foo => "we got foo" }   // result = "we got foo"
    "bar" match { case `foo` => "we got foo" } // result = MatchError

  This checker raises a warning with the second match. To fix it, use an identifier which starts with an upper case letter (best), use case \_ or,
  if you wish to refer to the value, add a type `: Any`

    val lc = "lc"
    "something" match { case lc: Any => "lc" } // result = "lc"
    "something" match { case _ => "lc" } // result = "lc"

#### Parameters
No parameters


### Example configuration
<pre>&lt;check enabled=&quot;true&quot; class=&quot;org.scalastyle.scalariform.LowercasePatternMatchChecker&quot; level=&quot;warning&quot;/&gt;</pre>
<a name="org_scalastyle_scalariform_MagicNumberChecker" />

### org.scalastyle.scalariform.MagicNumberChecker - Checks for use of magic numbers

 * id - magic.number
 * description - Checks for use of magic numbers
 * class - org.scalastyle.scalariform.MagicNumberChecker
 * default level - WarningLevel

#### Justification
Replacing a magic number with a named constant can make code easier to read and understand, and can avoid some subtle bugs.

#### Description
A simple assignment to a val is not considered to be a magic number, for example:

    val foo = 4

is not a magic number, but

    var foo = 4

is considered to be a magic number.

#### Parameters
<table width="80%"><tr><th>Parameter</th><th>Description</th><th>Type</th><th>Default Value</th></tr><tr><td>ignore</td>
								<td>Ignore</td>
								<td>string</td>
								<td>-1,0,1,2</td>
								</tr></table>


### Example configuration
<pre>&lt;check enabled=&quot;true&quot; class=&quot;org.scalastyle.scalariform.MagicNumberChecker&quot; level=&quot;warning&quot;&gt;
 &lt;parameters&gt;
  &lt;parameter name=&quot;ignore&quot;&gt;-1,0,1,2,3&lt;/parameter&gt;
 &lt;/parameters&gt;
&lt;/check&gt;</pre>
<a name="org_scalastyle_scalariform_MethodLengthChecker" />

### org.scalastyle.scalariform.MethodLengthChecker - Checks that methods do not exceed a maximum length

 * id - method.length
 * description - Checks that methods do not exceed a maximum length
 * class - org.scalastyle.scalariform.MethodLengthChecker
 * default level - WarningLevel

#### Justification
Long methods can be hard to read and understand.

#### Parameters
<table width="80%"><tr><th>Parameter</th><th>Description</th><th>Type</th><th>Default Value</th></tr><tr><td>maxLength</td>
								<td>Maximum length</td>
								<td>integer</td>
								<td>50</td>
								</tr></table>


### Example configuration
<pre>&lt;check enabled=&quot;true&quot; class=&quot;org.scalastyle.scalariform.MethodLengthChecker&quot; level=&quot;warning&quot;&gt;
 &lt;parameters&gt;
  &lt;parameter name=&quot;maxLength&quot;&gt;50&lt;/parameter&gt;
 &lt;/parameters&gt;
&lt;/check&gt;</pre>
<a name="org_scalastyle_scalariform_MethodNamesChecker" />

### org.scalastyle.scalariform.MethodNamesChecker - Check that method names match a regular expression

 * id - method.name
 * description - Check that method names match a regular expression
 * class - org.scalastyle.scalariform.MethodNamesChecker
 * default level - WarningLevel

#### Justification
The Scala style guide recommends that method names conform to certain standards. If the methods are overriding another method, and the overridden method
 cannot be changed, then use the ignoreOverride parameter.

#### Parameters
<table width="80%"><tr><th>Parameter</th><th>Description</th><th>Type</th><th>Default Value</th></tr><tr><td>regex</td>
								<td>Regular expression</td>
								<td>string</td>
								<td>^[a-z][A-Za-z0-9]*(_=)?$</td>
								</tr><tr><td>ignoreRegex</td>
								<td>Regular expression to ignore</td>
								<td>string</td>
								<td>^$</td>
								</tr><tr><td>ignoreOverride</td>
								<td>Ignore override</td>
								<td>boolean</td>
								<td>false</td>
								</tr></table>


### Example configuration
<pre>&lt;check enabled=&quot;true&quot; class=&quot;org.scalastyle.scalariform.MethodNamesChecker&quot; level=&quot;warning&quot;&gt;
 &lt;parameters&gt;
  &lt;parameter name=&quot;regex&quot;&gt;^[A-Za-z]*$&lt;/parameter&gt;
  &lt;parameter name=&quot;ignoreRegex&quot;&gt;^.*$&lt;/parameter&gt;
  &lt;parameter name=&quot;ignoreOverride&quot;&gt;false&lt;/parameter&gt;
 &lt;/parameters&gt;
&lt;/check&gt;</pre>
<a name="org_scalastyle_scalariform_MultipleStringLiteralsChecker" />

### org.scalastyle.scalariform.MultipleStringLiteralsChecker - Checks that a string literal does not appear multiple times

 * id - multiple.string.literals
 * description - Checks that a string literal does not appear multiple times
 * class - org.scalastyle.scalariform.MultipleStringLiteralsChecker
 * default level - WarningLevel

#### Justification
Code duplication makes maintenance more difficult, so it can be better to replace the multiple occurrences with a constant.

#### Parameters
<table width="80%"><tr><th>Parameter</th><th>Description</th><th>Type</th><th>Default Value</th></tr><tr><td>allowed</td>
								<td>Maximum occurences allowed</td>
								<td>integer</td>
								<td>1</td>
								</tr><tr><td>ignoreRegex</td>
								<td>Ignore regular expression</td>
								<td>string</td>
								<td>^&quot;&quot;$</td>
								</tr></table>


### Example configuration
<pre>&lt;check enabled=&quot;true&quot; class=&quot;org.scalastyle.scalariform.MultipleStringLiteralsChecker&quot; level=&quot;warning&quot;&gt;
 &lt;parameters&gt;
  &lt;parameter name=&quot;allowed&quot;&gt;1&lt;/parameter&gt;
  &lt;parameter name=&quot;ignoreRegex&quot;&gt;^\&amp;quot;\&amp;quot;$&lt;/parameter&gt;
 &lt;/parameters&gt;
&lt;/check&gt;</pre>
<a name="org_scalastyle_scalariform_NoCloneChecker" />

### org.scalastyle.scalariform.NoCloneChecker - Check that classes and objects do not define the clone() method

 * id - no.clone
 * description - Check that classes and objects do not define the clone() method
 * class - org.scalastyle.scalariform.NoCloneChecker
 * default level - WarningLevel

#### Parameters
No parameters


### Example configuration
TBD
<a name="org_scalastyle_scalariform_NoFinalizeChecker" />

### org.scalastyle.scalariform.NoFinalizeChecker - Check that classes and objects do not define the finalize() method

 * id - no.finalize
 * description - Check that classes and objects do not define the finalize() method
 * class - org.scalastyle.scalariform.NoFinalizeChecker
 * default level - WarningLevel

#### Parameters
No parameters


### Example configuration
TBD
<a name="org_scalastyle_scalariform_NoWhitespaceAfterLeftBracketChecker" />

### org.scalastyle.scalariform.NoWhitespaceAfterLeftBracketChecker - No whitespace after left bracket '\['

 * id - no.whitespace.after.left.bracket
 * description - No whitespace after left bracket '\['
 * class - org.scalastyle.scalariform.NoWhitespaceAfterLeftBracketChecker
 * default level - WarningLevel

#### Parameters
No parameters


### Example configuration
TBD
<a name="org_scalastyle_scalariform_NoWhitespaceBeforeLeftBracketChecker" />

### org.scalastyle.scalariform.NoWhitespaceBeforeLeftBracketChecker - No whitespace before left bracket '\['

 * id - no.whitespace.before.left.bracket
 * description - No whitespace before left bracket '\['
 * class - org.scalastyle.scalariform.NoWhitespaceBeforeLeftBracketChecker
 * default level - WarningLevel

#### Parameters
No parameters


### Example configuration
TBD
<a name="org_scalastyle_scalariform_NonASCIICharacterChecker" />

### org.scalastyle.scalariform.NonASCIICharacterChecker - Some editors are unfriendly to non ascii characters.

 * id - non.ascii.character.disallowed
 * description - Some editors are unfriendly to non ascii characters.
 * class - org.scalastyle.scalariform.NonASCIICharacterChecker
 * default level - WarningLevel

#### Justification
Scala allows unicode characters as operators and some editors misbehave when they see non-ascii character.
            In a project collaborated by a community of developers. This check can be helpful in such situations.


            "value".match {
            case "value" => println("matched")
            ...
            }

            is preferred to

            "value".match {
            case "value" ⇒ println("matched")
            ...
            }

            To fix it, replace the (unicode operator)⇒ with =>.

#### Parameters
No parameters


### Example configuration
<pre>&lt;check enabled=&quot;true&quot; class=&quot;org.scalastyle.scalariform.NonASCIICharacterChecker&quot; level=&quot;warning&quot;/&gt;</pre>
<a name="org_scalastyle_scalariform_NotImplementedErrorUsage" />

### org.scalastyle.scalariform.NotImplementedErrorUsage - Checks that the code does not have ??? operators.

 * id - not.implemented.error.usage
 * description - Checks that the code does not have ??? operators.
 * class - org.scalastyle.scalariform.NotImplementedErrorUsage
 * default level - WarningLevel

#### Justification
The ??? operator denotes that an implementation is missing. This rule helps to avoid potential runtime errors because of not implemented code.

#### Parameters
No parameters


### Example configuration
<pre>&lt;check enabled=&quot;true&quot; class=&quot;org.scalastyle.scalariform.NotImplementedErrorUsage&quot; level=&quot;warning&quot;/&gt;</pre>
<a name="org_scalastyle_scalariform_NullChecker" />

### org.scalastyle.scalariform.NullChecker - Check that null is not used

 * id - null
 * description - Check that null is not used
 * class - org.scalastyle.scalariform.NullChecker
 * default level - WarningLevel

#### Parameters
No parameters


### Example configuration
TBD
<a name="org_scalastyle_scalariform_NumberOfMethodsInTypeChecker" />

### org.scalastyle.scalariform.NumberOfMethodsInTypeChecker - Check that a class / trait / object does not have too many methods

 * id - number.of.methods
 * description - Check that a class / trait / object does not have too many methods
 * class - org.scalastyle.scalariform.NumberOfMethodsInTypeChecker
 * default level - WarningLevel

#### Justification
If a type declares too many methods, this can be an indication of bad design.

#### Parameters
<table width="80%"><tr><th>Parameter</th><th>Description</th><th>Type</th><th>Default Value</th></tr><tr><td>maxMethods</td>
								<td>Maximum methods</td>
								<td>integer</td>
								<td>30</td>
								</tr></table>


### Example configuration
<pre>&lt;check enabled=&quot;true&quot; class=&quot;org.scalastyle.scalariform.NumberOfMethodsInTypeChecker&quot; level=&quot;warning&quot;&gt;
 &lt;parameters&gt;
  &lt;parameter name=&quot;maxMethods&quot;&gt;30&lt;/parameter&gt;
 &lt;/parameters&gt;
&lt;/check&gt;</pre>
<a name="org_scalastyle_scalariform_NumberOfTypesChecker" />

### org.scalastyle.scalariform.NumberOfTypesChecker - Checks that there are not too many types declared in a file

 * id - number.of.types
 * description - Checks that there are not too many types declared in a file
 * class - org.scalastyle.scalariform.NumberOfTypesChecker
 * default level - WarningLevel

#### Justification
If there are too many classes/objects defined in a single file, this can cause the code to be difficult to understand.

#### Parameters
<table width="80%"><tr><th>Parameter</th><th>Description</th><th>Type</th><th>Default Value</th></tr><tr><td>maxTypes</td>
								<td>Maximum Number</td>
								<td>integer</td>
								<td>20</td>
								</tr></table>


### Example configuration
<pre>&lt;check enabled=&quot;true&quot; class=&quot;org.scalastyle.scalariform.NumberOfTypesChecker&quot; level=&quot;warning&quot;&gt;
 &lt;parameters&gt;
  &lt;parameter name=&quot;maxTypes&quot;&gt;20&lt;/parameter&gt;
 &lt;/parameters&gt;
&lt;/check&gt;</pre>
<a name="org_scalastyle_scalariform_ObjectNamesChecker" />

### org.scalastyle.scalariform.ObjectNamesChecker - Check that object names match a regular expression

 * id - object.name
 * description - Check that object names match a regular expression
 * class - org.scalastyle.scalariform.ObjectNamesChecker
 * default level - WarningLevel

#### Parameters
<table width="80%"><tr><th>Parameter</th><th>Description</th><th>Type</th><th>Default Value</th></tr><tr><td>regex</td>
								<td>Regular expression</td>
								<td>string</td>
								<td>^[A-Z][A-Za-z]*$</td>
								</tr></table>


### Example configuration
TBD
<a name="org_scalastyle_scalariform_PackageObjectNamesChecker" />

### org.scalastyle.scalariform.PackageObjectNamesChecker - Check that package object names match a regular expression

 * id - package.object.name
 * description - Check that package object names match a regular expression
 * class - org.scalastyle.scalariform.PackageObjectNamesChecker
 * default level - WarningLevel

#### Parameters
<table width="80%"><tr><th>Parameter</th><th>Description</th><th>Type</th><th>Default Value</th></tr><tr><td>regex</td>
								<td>Regular expression</td>
								<td>string</td>
								<td>^[a-z][A-Za-z]*$</td>
								</tr></table>


### Example configuration
TBD
<a name="org_scalastyle_scalariform_ParameterNumberChecker" />

### org.scalastyle.scalariform.ParameterNumberChecker - Maximum number of parameters for a method

 * id - parameter.number
 * description - Maximum number of parameters for a method
 * class - org.scalastyle.scalariform.ParameterNumberChecker
 * default level - WarningLevel

#### Parameters
<table width="80%"><tr><th>Parameter</th><th>Description</th><th>Type</th><th>Default Value</th></tr><tr><td>maxParameters</td>
								<td>Maximum Number</td>
								<td>integer</td>
								<td>8</td>
								</tr></table>


### Example configuration
TBD
<a name="org_scalastyle_scalariform_ProcedureDeclarationChecker" />

### org.scalastyle.scalariform.ProcedureDeclarationChecker - Use a : Unit = for procedure declarations

 * id - procedure.declaration
 * description - Use a : Unit = for procedure declarations
 * class - org.scalastyle.scalariform.ProcedureDeclarationChecker
 * default level - WarningLevel

#### Justification
A procedure style declaration can cause confusion - the developer may have simply forgotten to add a '=', and now their method returns Unit rather than the inferred type:

    def foo() { println("hello"); 5 }
    def foo() = { println("hello"); 5 }

  This checker raises a warning with the first line. To fix it, use an explicit return type, or add a '=' before the body.

#### Parameters
No parameters


### Example configuration
<pre>&lt;check enabled=&quot;true&quot; class=&quot;org.scalastyle.scalariform.ProcedureDeclarationChecker&quot; level=&quot;warning&quot;/&gt;</pre>
<a name="org_scalastyle_scalariform_PublicMethodsHaveTypeChecker" />

### org.scalastyle.scalariform.PublicMethodsHaveTypeChecker - Check that a method has an explicit return type, it is not inferred

 * id - public.methods.have.type
 * description - Check that a method has an explicit return type, it is not inferred
 * class - org.scalastyle.scalariform.PublicMethodsHaveTypeChecker
 * default level - WarningLevel

#### Justification
A public method declared on a type is effectively an API declaration. Explicitly declaring a return type means that other code which depends on that type won't break unexpectedly.

#### Parameters
<table width="80%"><tr><th>Parameter</th><th>Description</th><th>Type</th><th>Default Value</th></tr><tr><td>ignoreOverride</td>
								<td>Ignore overridden methods</td>
								<td>boolean</td>
								<td>false</td>
								</tr></table>


### Example configuration
<pre>&lt;check enabled=&quot;true&quot; class=&quot;org.scalastyle.scalariform.PublicMethodsHaveTypeChecker&quot; level=&quot;warning&quot;&gt;
 &lt;parameters&gt;
  &lt;parameter name=&quot;ignoreOverride&quot;&gt;false&lt;/parameter&gt;
 &lt;/parameters&gt;
&lt;/check&gt;</pre>
<a name="org_scalastyle_scalariform_RedundantIfChecker" />

### org.scalastyle.scalariform.RedundantIfChecker - Checks that if expressions are not redundant, i.e. easily replaced by a variant of the condition

 * id - if.redundant
 * description - Checks that if expressions are not redundant, i.e. easily replaced by a variant of the condition
 * class - org.scalastyle.scalariform.RedundantIfChecker
 * default level - WarningLevel

#### Justification
If expressions with boolean constants in both branches can be eliminated without affecting readability. Prefer simply `cond` to `if (cond) true else false` and `!cond` to `if (cond) false else true`.

#### Parameters
No parameters


### Example configuration
<pre>&lt;check enabled=&quot;true&quot; class=&quot;org.scalastyle.scalariform.RedundantIfChecker&quot; level=&quot;warning&quot;/&gt;</pre>
<a name="org_scalastyle_scalariform_ReturnChecker" />

### org.scalastyle.scalariform.ReturnChecker - Check that return is not used

 * id - return
 * description - Check that return is not used
 * class - org.scalastyle.scalariform.ReturnChecker
 * default level - WarningLevel

#### Parameters
No parameters


### Example configuration
TBD
<a name="org_scalastyle_scalariform_ScalaDocChecker" />

### org.scalastyle.scalariform.ScalaDocChecker - Checks that the ScalaDoc on documentable members is well-formed

 * id - scaladoc
 * description - Checks that the ScalaDoc on documentable members is well-formed
 * class - org.scalastyle.scalariform.ScalaDocChecker
 * default level - WarningLevel

#### Parameters
No parameters


### Example configuration
TBD
<a name="org_scalastyle_scalariform_SimplifyBooleanExpressionChecker" />

### org.scalastyle.scalariform.SimplifyBooleanExpressionChecker - Boolean expression can be simplified

 * id - simplify.boolean.expression
 * description - Boolean expression can be simplified
 * class - org.scalastyle.scalariform.SimplifyBooleanExpressionChecker
 * default level - WarningLevel

#### Parameters
No parameters


### Example configuration
TBD
<a name="org_scalastyle_scalariform_SpaceAfterCommentStartChecker" />

### org.scalastyle.scalariform.SpaceAfterCommentStartChecker - Checks a space after the start of the comment.

 * id - space.after.comment.start
 * description - Checks a space after the start of the comment.
 * class - org.scalastyle.scalariform.SpaceAfterCommentStartChecker
 * default level - WarningLevel

#### Justification
To bring consistency with how comments should be formatted, leave a space right after the beginning of the comment.

    package foobar

    object Foobar {
    /**WRONG
    *
    */
    /** Correct*/
    val d = 2 /*Wrong*/ //Wrong
    /**
    *Correct
    */
    val e = 3/** Correct*/ // Correct
    }

#### Parameters
No parameters


### Example configuration
<pre>&lt;check enabled=&quot;true&quot; class=&quot;org.scalastyle.scalariform.SpaceAfterCommentStartChecker&quot; level=&quot;warning&quot;/&gt;</pre>
<a name="org_scalastyle_scalariform_SpacesAfterPlusChecker" />

### org.scalastyle.scalariform.SpacesAfterPlusChecker - Check that the plus sign is followed by a space

 * id - spaces.after.plus
 * description - Check that the plus sign is followed by a space
 * class - org.scalastyle.scalariform.SpacesAfterPlusChecker
 * default level - WarningLevel

#### Parameters
No parameters


### Example configuration
TBD
<a name="org_scalastyle_scalariform_SpacesBeforePlusChecker" />

### org.scalastyle.scalariform.SpacesBeforePlusChecker - Check that the plus sign is preceded by a space

 * id - spaces.before.plus
 * description - Check that the plus sign is preceded by a space
 * class - org.scalastyle.scalariform.SpacesBeforePlusChecker
 * default level - WarningLevel

#### Parameters
No parameters


### Example configuration
TBD
<a name="org_scalastyle_scalariform_StructuralTypeChecker" />

### org.scalastyle.scalariform.StructuralTypeChecker - Check that structural types are not used.

 * id - structural.type
 * description - Check that structural types are not used.
 * class - org.scalastyle.scalariform.StructuralTypeChecker
 * default level - WarningLevel

#### Parameters
No parameters


### Example configuration
TBD
<a name="org_scalastyle_scalariform_TokenChecker" />

### org.scalastyle.scalariform.TokenChecker - Checks that a regular expression cannot be matched in a token, if found reports this

 * id - token
 * description - Checks that a regular expression cannot be matched in a token, if found reports this
 * class - org.scalastyle.scalariform.TokenChecker
 * default level - WarningLevel

#### Parameters
<table width="80%"><tr><th>Parameter</th><th>Description</th><th>Type</th><th>Default Value</th></tr><tr><td>regex</td>
								<td>Regular expression</td>
								<td>string</td>
								<td>^$</td>
								</tr></table>


### Example configuration
<pre>&lt;check enabled=&quot;true&quot; class=&quot;org.scalastyle.scalariform.TokenChecker&quot; level=&quot;warning&quot;&gt;
 &lt;parameters&gt;
  &lt;parameter name=&quot;regex&quot;&gt;^[ai]sInstanceOf$&lt;/parameter&gt;
 &lt;/parameters&gt;
 &lt;customMessage&gt;Avoid casting.&lt;/customMessage&gt;
&lt;/check&gt;</pre>
<a name="org_scalastyle_scalariform_UnderscoreImportChecker" />

### org.scalastyle.scalariform.UnderscoreImportChecker - Avoid wildcard imports

 * id - underscore.import
 * description - Avoid wildcard imports
 * class - org.scalastyle.scalariform.UnderscoreImportChecker
 * default level - WarningLevel

#### Justification
Importing all classes from a package or static members from a class leads to tight coupling between packages or classes and might lead to problems when a new version of a library introduces name clashes.

#### Parameters
No parameters


### Example configuration
<pre>&lt;check enabled=&quot;true&quot; class=&quot;org.scalastyle.scalariform.UnderscoreImportChecker&quot; level=&quot;warning&quot;/&gt;</pre>
<a name="org_scalastyle_scalariform_UppercaseLChecker" />

### org.scalastyle.scalariform.UppercaseLChecker - Checks that if a long literal is used, then an uppercase L is used

 * id - uppercase.l
 * description - Checks that if a long literal is used, then an uppercase L is used
 * class - org.scalastyle.scalariform.UppercaseLChecker
 * default level - WarningLevel

#### Justification
A lowercase L (l) can look similar to a number 1 with some fonts.

#### Parameters
No parameters


### Example configuration
<pre>&lt;check enabled=&quot;true&quot; class=&quot;org.scalastyle.scalariform.UppercaseLChecker&quot; level=&quot;warning&quot;/&gt;</pre>
<a name="org_scalastyle_scalariform_VarFieldChecker" />

### org.scalastyle.scalariform.VarFieldChecker - Checks that classes and objects do not define mutable fields

 * id - var.field
 * description - Checks that classes and objects do not define mutable fields
 * class - org.scalastyle.scalariform.VarFieldChecker
 * default level - WarningLevel

#### Justification
var (mutable fields) are deprecated if you're using a strict functional style

#### Parameters
No parameters


### Example configuration
<pre>&lt;check enabled=&quot;true&quot; class=&quot;org.scalastyle.scalariform.VarFieldChecker&quot; level=&quot;warning&quot;/&gt;</pre>
<a name="org_scalastyle_scalariform_VarLocalChecker" />

### org.scalastyle.scalariform.VarLocalChecker - Checks that functions do not define mutable variables

 * id - var.local
 * description - Checks that functions do not define mutable variables
 * class - org.scalastyle.scalariform.VarLocalChecker
 * default level - WarningLevel

#### Justification
vars (mutable local variables) loops are deprecated if you're using a strict functional style

#### Parameters
No parameters


### Example configuration
<pre>&lt;check enabled=&quot;true&quot; class=&quot;org.scalastyle.scalariform.VarLocalChecker&quot; level=&quot;warning&quot;/&gt;</pre>
<a name="org_scalastyle_scalariform_WhileChecker" />

### org.scalastyle.scalariform.WhileChecker - Checks that while is not used

 * id - while
 * description - Checks that while is not used
 * class - org.scalastyle.scalariform.WhileChecker
 * default level - WarningLevel

#### Justification
while loops are deprecated if you're using a strict functional style

#### Parameters
No parameters


### Example configuration
<pre>&lt;check enabled=&quot;true&quot; class=&quot;org.scalastyle.scalariform.WhileChecker&quot; level=&quot;warning&quot;/&gt;</pre>

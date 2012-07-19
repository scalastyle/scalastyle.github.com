---
layout: scalastyle
title: "Scalastyle: Implemented Rules"
---

There are 34 rules which are currently implemented:

### org.scalastyle.file.FileLengthChecker - Check the number of lines in a file

 * id - file.size.limit
 * description - Check the number of lines in a file
 * class - org.scalastyle.file.FileLengthChecker
 * default level - WarningLevel

#### Parameters
<table width="80%"><tr><th>Parameter</th><th>Description</th><th>Type</th><th>Default Value</th></tr><tr><td>maxFileLength</td>
								<td>Maximum file length</td>
								<td>integer</td>
								<td>1500</td>
								</tr></table>

### org.scalastyle.file.FileLineLengthChecker - Check the number of characters in a line

 * id - line.size.limit
 * description - Check the number of characters in a line
 * class - org.scalastyle.file.FileLineLengthChecker
 * default level - WarningLevel

#### Parameters
<table width="80%"><tr><th>Parameter</th><th>Description</th><th>Type</th><th>Default Value</th></tr><tr><td>maxLineLength</td>
								<td>Maximum line length</td>
								<td>integer</td>
								<td>160</td>
								</tr><tr><td>tabSize</td>
								<td>Tab size</td>
								<td>integer</td>
								<td>4</td>
								</tr></table>

### org.scalastyle.file.FileTabChecker - Check that there are no tabs in a file

 * id - line.contains.tab
 * description - Check that there are no tabs in a file
 * class - org.scalastyle.file.FileTabChecker
 * default level - WarningLevel

#### Parameters
No parameters

### org.scalastyle.file.HeaderMatchesChecker - Check the first lines of each file matches the text

 * id - header.matches
 * description - Check the first lines of each file matches the text
 * class - org.scalastyle.file.HeaderMatchesChecker
 * default level - WarningLevel

#### Parameters
<table width="80%"><tr><th>Parameter</th><th>Description</th><th>Type</th><th>Default Value</th></tr><tr><td>header</td>
								<td>Header</td>
								<td>string</td>
								<td></td>
								</tr></table>

### org.scalastyle.file.NewLineAtEofChecker - Checks that a file ends with a newline character

 * id - newline.at.eof
 * description - Checks that a file ends with a newline character
 * class - org.scalastyle.file.NewLineAtEofChecker
 * default level - WarningLevel

#### Parameters
No parameters

### org.scalastyle.file.NoNewLineAtEofChecker - Checks that a file does not end with a newline character

 * id - no.newline.at.eof
 * description - Checks that a file does not end with a newline character
 * class - org.scalastyle.file.NoNewLineAtEofChecker
 * default level - WarningLevel

#### Parameters
No parameters

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

### org.scalastyle.file.WhitespaceEndOfLineChecker - Check that there is no trailing whitespace at the end of lines

 * id - whitespace.end.of.line
 * description - Check that there is no trailing whitespace at the end of lines
 * class - org.scalastyle.file.WhitespaceEndOfLineChecker
 * default level - WarningLevel

#### Parameters
No parameters

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

### org.scalastyle.scalariform.CovariantEqualsChecker - Check that classes and objects do not define equals without overriding equals(java.lang.Object).

 * id - covariant.equals
 * description - Check that classes and objects do not define equals without overriding equals(java.lang.Object).
 * class - org.scalastyle.scalariform.CovariantEqualsChecker
 * default level - WarningLevel

#### Parameters
No parameters

### org.scalastyle.scalariform.CyclomaticComplexityChecker - Checks that the cyclomatic complexity of a method does exceed a value

 * id - cyclomatic.complexity
 * description - Checks that the cyclomatic complexity of a method does exceed a value
 * class - org.scalastyle.scalariform.CyclomaticComplexityChecker
 * default level - WarningLevel

#### Parameters
<table width="80%"><tr><th>Parameter</th><th>Description</th><th>Type</th><th>Default Value</th></tr><tr><td>maximum</td>
								<td>Maximum</td>
								<td>integer</td>
								<td>10</td>
								</tr></table>

### org.scalastyle.scalariform.EqualsHashCodeChecker - Check that if a class implements either equals or hashCode, it should implement the other

 * id - equals.hash.code
 * description - Check that if a class implements either equals or hashCode, it should implement the other
 * class - org.scalastyle.scalariform.EqualsHashCodeChecker
 * default level - WarningLevel

#### Parameters
No parameters

### org.scalastyle.scalariform.IfBraceChecker - Checks that if statement have braces

 * id - if.brace
 * description - Checks that if statement have braces
 * class - org.scalastyle.scalariform.IfBraceChecker
 * default level - WarningLevel

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

### org.scalastyle.scalariform.MagicNumberChecker - Checks for use of magic numbers

 * id - magic.number
 * description - Checks for use of magic numbers
 * class - org.scalastyle.scalariform.MagicNumberChecker
 * default level - WarningLevel

#### Parameters
<table width="80%"><tr><th>Parameter</th><th>Description</th><th>Type</th><th>Default Value</th></tr><tr><td>ignore</td>
								<td>Ignore</td>
								<td>string</td>
								<td>-1,0,1,2</td>
								</tr></table>

### org.scalastyle.scalariform.MethodLengthChecker - Checks that methods do not exceed a maximum length

 * id - method.length
 * description - Checks that methods do not exceed a maximum length
 * class - org.scalastyle.scalariform.MethodLengthChecker
 * default level - WarningLevel

#### Parameters
<table width="80%"><tr><th>Parameter</th><th>Description</th><th>Type</th><th>Default Value</th></tr><tr><td>maxLength</td>
								<td>Maximum length</td>
								<td>integer</td>
								<td>50</td>
								</tr></table>

### org.scalastyle.scalariform.MethodNamesChecker - Check that method names match a regular expression

 * id - method.name
 * description - Check that method names match a regular expression
 * class - org.scalastyle.scalariform.MethodNamesChecker
 * default level - WarningLevel

#### Parameters
<table width="80%"><tr><th>Parameter</th><th>Description</th><th>Type</th><th>Default Value</th></tr><tr><td>regex</td>
								<td>Regular expression</td>
								<td>string</td>
								<td>^[a-z][A-Za-z0-9]*$</td>
								</tr></table>

### org.scalastyle.scalariform.NoCloneChecker - Check that classes and objects do not define the clone() method

 * id - no.clone
 * description - Check that classes and objects do not define the clone() method
 * class - org.scalastyle.scalariform.NoCloneChecker
 * default level - WarningLevel

#### Parameters
No parameters

### org.scalastyle.scalariform.NoFinalizeChecker - Check that classes and objects do not define the finalize() method

 * id - no.finalize
 * description - Check that classes and objects do not define the finalize() method
 * class - org.scalastyle.scalariform.NoFinalizeChecker
 * default level - WarningLevel

#### Parameters
No parameters

### org.scalastyle.scalariform.NoWhitespaceAfterLeftBracketChecker - No whitespace after left bracket '\['

 * id - no.whitespace.after.left.bracket
 * description - No whitespace after left bracket '\['
 * class - org.scalastyle.scalariform.NoWhitespaceAfterLeftBracketChecker
 * default level - WarningLevel

#### Parameters
No parameters

### org.scalastyle.scalariform.NoWhitespaceBeforeLeftBracketChecker - No whitespace before left bracket '\['

 * id - no.whitespace.before.left.bracket
 * description - No whitespace before left bracket '\['
 * class - org.scalastyle.scalariform.NoWhitespaceBeforeLeftBracketChecker
 * default level - WarningLevel

#### Parameters
No parameters

### org.scalastyle.scalariform.NullChecker - Check that null is not used

 * id - null
 * description - Check that null is not used
 * class - org.scalastyle.scalariform.NullChecker
 * default level - WarningLevel

#### Parameters
No parameters

### org.scalastyle.scalariform.NumberOfMethodsInTypeChecker - Check that a class / trait / object does not have too many methods

 * id - number.of.methods
 * description - Check that a class / trait / object does not have too many methods
 * class - org.scalastyle.scalariform.NumberOfMethodsInTypeChecker
 * default level - WarningLevel

#### Parameters
<table width="80%"><tr><th>Parameter</th><th>Description</th><th>Type</th><th>Default Value</th></tr><tr><td>maxMethods</td>
								<td>Maximum methods</td>
								<td>integer</td>
								<td>30</td>
								</tr></table>

### org.scalastyle.scalariform.NumberOfTypesChecker - Checks that there are not too many types declared in a file

 * id - number.of.types
 * description - Checks that there are not too many types declared in a file
 * class - org.scalastyle.scalariform.NumberOfTypesChecker
 * default level - WarningLevel

#### Parameters
<table width="80%"><tr><th>Parameter</th><th>Description</th><th>Type</th><th>Default Value</th></tr><tr><td>maxTypes</td>
								<td>Maximum Number</td>
								<td>integer</td>
								<td>20</td>
								</tr></table>

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

### org.scalastyle.scalariform.PublicMethodsHaveTypeChecker - Check that a method has an explicit return type, it is not inferred

 * id - public.methods.have.type
 * description - Check that a method has an explicit return type, it is not inferred
 * class - org.scalastyle.scalariform.PublicMethodsHaveTypeChecker
 * default level - WarningLevel

#### Parameters
No parameters

### org.scalastyle.scalariform.ReturnChecker - Check that return is not used

 * id - return
 * description - Check that return is not used
 * class - org.scalastyle.scalariform.ReturnChecker
 * default level - WarningLevel

#### Parameters
No parameters

### org.scalastyle.scalariform.SimplifyBooleanExpressionChecker - Boolean expression can be simplified

 * id - simplify.boolean.expression
 * description - Boolean expression can be simplified
 * class - org.scalastyle.scalariform.SimplifyBooleanExpressionChecker
 * default level - WarningLevel

#### Parameters
No parameters

### org.scalastyle.scalariform.SpacesAfterPlusChecker - Check that the plus sign is followed by a space

 * id - spaces.after.plus
 * description - Check that the plus sign is followed by a space
 * class - org.scalastyle.scalariform.SpacesAfterPlusChecker
 * default level - WarningLevel

#### Parameters
No parameters

### org.scalastyle.scalariform.SpacesBeforePlusChecker - Check that the plus sign is preceded by a space

 * id - spaces.before.plus
 * description - Check that the plus sign is preceded by a space
 * class - org.scalastyle.scalariform.SpacesBeforePlusChecker
 * default level - WarningLevel

#### Parameters
No parameters

### org.scalastyle.scalariform.StructuralTypeChecker - Check that structural types are not used.

 * id - structural.type
 * description - Check that structural types are not used.
 * class - org.scalastyle.scalariform.StructuralTypeChecker
 * default level - WarningLevel

#### Parameters
No parameters

### org.scalastyle.scalariform.UppercaseLChecker - Checks that if a long literal is used, then an uppercase L is used

 * id - uppercase.l
 * description - Checks that if a long literal is used, then an uppercase L is used
 * class - org.scalastyle.scalariform.UppercaseLChecker
 * default level - WarningLevel

#### Parameters
No parameters


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first) db
#
User.destroy_all
UserTerm.destroy_all
Term.destroy_all
Language.destroy_all

u1 = User.create!(name: "Brinda", username: "b", password: "1234")
u2 = User.create!(name: "Eunice", username: "e", password: "1234")

l1 = Language.create!(name: "Ruby")
l2 = Language.create!(name: "JavaScript")

t1 = Term.create!(name: "select", content: "Returns an array containing 
  all elements of enum for which the given block returns a true value. 
  The find_all and select methods are aliases. There is no performance 
  benefit to either. If no block is given, an Enumerator is returned instead.", language: l1)
t2 = Term.create!(name: "map", content: "Returns a new array with the 
  results of running block once for every element in enum. If no block 
  is given, an enumerator is returned instead.", language: l1)
t3 = Term.create!(name: "uniq", content: "Returns a new array by removing duplicate values in self.", language: l1)
t4 = Term.create!(name: "Local Variables", content: "Local variables are 
  the variables that are defined in a method. Local variables are not available 
  outside the method. You will see more details about method in subsequent chapter. Local 
  variables begin with a lowercase letter or _.", language: l1)
t5 = Term.create!(name: "Instance Variables", content: "Instance variables are available 
  across methods for any particular instance or object. That means that instance variables 
  change from object to object. Instance variables are preceded by the at sign (@) followed 
  by the variable name.", language: l1)
t6 = Term.create!(name: "Class Variables", content: "Class variables are available across 
  different objects. A class variable belongs to the class and is a characteristic of a class. 
  They are preceded by the sign @@ and are followed by the variable name.", language: l1)
t7 = Term.create!(name: "Global Variables", content: "Class variables are not available across 
  classes. If you want to have a single variable, which is available across classes, you need 
  to define a global variable. The global variables are always preceded by the dollar sign ($).", language: l1)
t8 = Term.create!(name: "==", content: "Checks if the value of two operands are equal or not, if yes then condition becomes true.
  Example: (a == b) is not true.", language: l1)
t9 = Term.create!(name: "!=", content: "Checks if the value of two operands are equal or not, if 
  values are not equal then condition becomes true. Example: (a != b) is true.", language: l1)
t10 = Term.create!(name: "+=", content: "	Add AND assignment operator, adds right operand to the left 
  operand and assign the result to left operand. Example: c += a is equivalent to c = c + a", language: l1)

t11 = Term.create!(name: "Functions", content: "A function is a JavaScript procedure—a set of 
  statements that performs a task or calculates a value.It is like a reusable piece of code.
  Imagine , having 20 for loops ,and then having a single function to handle it all . To use a 
  function, you must define it somewhere in the scope from which you wish to call it. A function 
  definition (also called a function declaration) consists of the function keyword, followed by 
  the name of the function, a list of arguments to the function, enclosed in parentheses and separated 
  by commas, the JavaScript statements that define the function, enclosed in curly braces, { }.", language: l2)
t12 = Term.create!(name: "Function Hoisting", content: "The two ways of declaring functions produce
   different results. Declaring a function one way “hoists” it to the top of the call, 
   and makes it available before it’s actually defined.", language: l2)
t13 = Term.create!(name: "Anonymous", content: "When something or someone is referred to as 
  anonymous it means that thing's or person's name is unidentified. Likewise in JavaScript 
  an anonymous function is the one that isn't identified by a name.", language: l2)
t14 = Term.create!(name: "Currying", content: "The effect, named after Haskell Curry, refers to using 
  multiple functions with single arguments, in place of a single function with multiple arguments. 
  Let's see the add functions below for example.", language: l2)
t15 = Term.create!(name: "Hoisting", content: "Hoist means to raise something. Hoisting in JavaScript 
  also means the same and what gets raised is the declaration (variable & function declarations). 
  Declarations are where variables and functions are created with keywords var (not for global) and function. 
  It doesn't matter where you type the code to declare a function or variable, during evaluation all the 
  declarations are moved up inside the scope where they reside (except for in strict mode). Hence, it's 
  possible to write a working code with the code for function call placed before function declaration.", language: l2)
t16 = Term.create!(name: "Mutation", content: "Mutation means change or modification. If you ever come 
  across the word mutation in JavaScript it's probably referring to the changes that DOM elements went through.
  There's even an API called MutationObserver to keep an eye out for the DOM mutations like addition of 
  child elements or changes to the element's attributes.", language: l2)
t17 = Term.create!(name: "Vanilla", content: "Vanilla is considered a traditional standard flavor. 
  Vanilla JavaScript is referred to the standard JavaScript — no framework. Vanilla in fact isn't only 
  used to describe the standard version of JavaScript but also other languages like CSS.", language: l2)
t18 = Term.create!(name: "Pragma", content: "Pragma is short for pragmatic information. In plain English, 
  pragmatic is an adjective that means sensible and practical. In programming, pragma refers to the code 
  that consist of useful information on how a compiler or interpreter or assembler should process the program.
  It does not contribute anything to the programming language itself and its syntax may vary. They only 
  affect the compiler behavior. JavaScript also has few pragmas, one of them is strict.", language: l2)
t19 = Term.create!(name: "Variadic", content: "Variadic is an adjective created by joining 'variable' and 
  'adicity'. 'Adicity' is from ancient Greek, with a meaning that's the same as the Latin word 'arity' 
  (Item 1 in this list). Thus, the term variadic is used to express something that has variable number of arguments.
  In JavaScript, a variadic function takes in any number of arguments. It can be created using arguments property, 
  apply method and since ES6, the spread operator. Below is an example using a spread operator.", language: l2)
t20 = Term.create!(name: "Document", content: "object name that refers to the HTML document that contains the JavaScript", language: l2)
  


UserTerm.create!(user: u1, term: t1)
UserTerm.create!(user: u1, term: t2)
UserTerm.create!(user: u2, term: t2)

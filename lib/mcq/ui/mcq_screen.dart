import 'package:flutter/material.dart';

import '../../aptitude/ui/aptitude_screen.dart';
import '../../widgets/mcq_screen.dart';

class McqScreen extends StatelessWidget {
  const McqScreen({
    super.key,
    required this.languageId,
    required this.languageName,
  });

  final int languageId;
  final String languageName;

  @override
  Widget build(BuildContext context) {
    return McqUi(
      questionsList: getQuestions(languageId),
      appTitle: "MCQ",
      languageName: languageName,
    );
  }

  List<Map<String, dynamic>> getQuestions(int languageId){
    if(languageId == 0){
      return cppQuestions;
    }
    if(languageId == 1){
      return javaQuestions;
    }
    if(languageId == 2){
      return pythonQuestions;
    }
    if(languageId == 3){
      return androidQuestions;
    }
    if(languageId == 4){
      return jsQuestions;
    }
    if(languageId == 5){
      return mysqlQuestions;
    }
    return cppQuestions;
  }
}

final List<Map<String, dynamic>> mysqlQuestions = [
  {
    "question": "1. What does SQL stand for?",
    "options": ["Structured Query Language", "Structured Question Language", "Simple Query Language", "Standard Query Language"],
    "answer": "Structured Query Language",
    "explanation": "SQL stands for Structured Query Language, used for managing and manipulating databases."
  },
  {
    "question": "2. Which command is used to create a database in MySQL?",
    "options": ["CREATE DATABASE", "MAKE DATABASE", "NEW DATABASE", "INIT DATABASE"],
    "answer": "CREATE DATABASE",
    "explanation": "The 'CREATE DATABASE' command is used to create a new database in MySQL."
  },
  {
    "question": "3. Which MySQL command is used to delete a table?",
    "options": ["DELETE TABLE", "REMOVE TABLE", "DROP TABLE", "ERASE TABLE"],
    "answer": "DROP TABLE",
    "explanation": "The 'DROP TABLE' command is used to delete a table from the database."
  },
  {
    "question": "4. What is a primary key?",
    "options": ["A key that uniquely identifies a row", "A key that references another table", "A key that allows null values", "A key that encrypts data"],
    "answer": "A key that uniquely identifies a row",
    "explanation": "A primary key uniquely identifies each record in a table and cannot contain NULL values."
  },
  {
    "question": "5. How do you retrieve all columns from a table?",
    "options": ["SELECT * FROM table_name", "GET * FROM table_name", "SHOW * FROM table_name", "DISPLAY * FROM table_name"],
    "answer": "SELECT * FROM table_name",
    "explanation": "In SQL, the 'SELECT *' statement retrieves all columns from a specified table."
  },
  {
    "question": "6. Which MySQL clause is used to filter records?",
    "options": ["WHERE", "FILTER", "LIMIT", "GROUP BY"],
    "answer": "WHERE",
    "explanation": "The 'WHERE' clause is used to filter records based on specific conditions."
  },
  {
    "question": "7. What is the default port for MySQL?",
    "options": ["8080", "3306", "1521", "5432"],
    "answer": "3306",
    "explanation": "The default port for MySQL is 3306."
  },
  {
    "question": "8. How can you change the structure of a table in MySQL?",
    "options": ["MODIFY TABLE", "UPDATE TABLE", "CHANGE TABLE", "ALTER TABLE"],
    "answer": "ALTER TABLE",
    "explanation": "The 'ALTER TABLE' command is used to modify the structure of an existing table."
  },
  {
    "question": "9. What does the 'JOIN' clause do in SQL?",
    "options": ["Combines columns from two or more tables", "Deletes records from a table", "Sorts records", "Limits records"],
    "answer": "Combines columns from two or more tables",
    "explanation": "The 'JOIN' clause is used to combine rows from two or more tables based on a related column."
  },
  {
    "question": "10. Which command is used to remove all records from a table without removing the table itself?",
    "options": ["DROP", "DELETE", "TRUNCATE", "REMOVE"],
    "answer": "TRUNCATE",
    "explanation": "'TRUNCATE' removes all records from a table without deleting the table structure, unlike 'DROP'."
  },
  {
    "question": "11. What is the difference between 'DELETE' and 'TRUNCATE'?",
    "options": ["'DELETE' can be rolled back, but 'TRUNCATE' cannot", "'TRUNCATE' deletes records, but 'DELETE' removes the structure", "'DELETE' is faster than 'TRUNCATE'", "Both are the same"],
    "answer": "'DELETE' can be rolled back, but 'TRUNCATE' cannot",
    "explanation": "'DELETE' operations can be rolled back, while 'TRUNCATE' is faster but cannot be rolled back."
  },
  {
    "question": "12. How do you sort the result set in MySQL?",
    "options": ["ORDER BY", "SORT BY", "GROUP BY", "FILTER BY"],
    "answer": "ORDER BY",
    "explanation": "'ORDER BY' is used to sort the result set in ascending or descending order."
  },
  {
    "question": "13. What is the purpose of the 'GROUP BY' clause in SQL?",
    "options": ["To group rows that have the same values", "To filter records", "To limit records", "To join tables"],
    "answer": "To group rows that have the same values",
    "explanation": "'GROUP BY' is used to group rows that share the same values into summary rows."
  },
  {
    "question": "14. Which statement is used to retrieve unique values from a table?",
    "options": ["SELECT DISTINCT", "SELECT UNIQUE", "SELECT DIFFERENT", "SELECT DISTINCTIVE"],
    "answer": "SELECT DISTINCT",
    "explanation": "'SELECT DISTINCT' is used to return only distinct (different) values from a column."
  },
  {
    "question": "15. What does the 'HAVING' clause do?",
    "options": ["Filters records after grouping", "Sorts records", "Limits records", "Joins tables"],
    "answer": "Filters records after grouping",
    "explanation": "'HAVING' is used to filter records that come after the 'GROUP BY' clause."
  },
  {
    "question": "16. How do you retrieve the current date in MySQL?",
    "options": ["GETDATE()", "CURDATE()", "SYSDATE()", "NOW()"],
    "answer": "CURDATE()",
    "explanation": "The 'CURDATE()' function returns the current date in MySQL."
  },
  {
    "question": "17. What is a foreign key?",
    "options": ["A key that links two tables", "A key that uniquely identifies each row", "A key that allows null values", "A key that encrypts data"],
    "answer": "A key that links two tables",
    "explanation": "A foreign key is a field in one table that refers to the primary key in another table."
  },
  {
    "question": "18. What is the purpose of the 'LIMIT' clause?",
    "options": ["To restrict the number of records returned", "To sort the records", "To group the records", "To join tables"],
    "answer": "To restrict the number of records returned",
    "explanation": "'LIMIT' is used to specify the number of records to return from a query."
  },
  {
    "question": "19. How do you rename a table in MySQL?",
    "options": ["RENAME TO", "CHANGE TO", "ALTER TO", "UPDATE TO"],
    "answer": "RENAME TO",
    "explanation": "'RENAME TO' is used to rename a table in MySQL."
  },
  {
    "question": "20. Which function is used to count the number of rows in a result set?",
    "options": ["SUM()", "COUNT()", "ROWCOUNT()", "NUMBER()"],
    "answer": "COUNT()",
    "explanation": "'COUNT()' is used to count the number of rows in a query result."
  },
];

final List<Map<String, dynamic>> jsQuestions = [
  {
    "question": "1. What is JavaScript?",
    "options": ["A programming language", "A database language", "A markup language", "A stylesheet language"],
    "answer": "A programming language",
    "explanation": "JavaScript is a lightweight, interpreted programming language used to make web pages interactive."
  },
  {
    "question": "2. How do you write 'Hello World' in an alert box?",
    "options": ["alert('Hello World');", "msg('Hello World');", "msgBox('Hello World');", "alertBox('Hello World');"],
    "answer": "alert('Hello World');",
    "explanation": "In JavaScript, the alert() function displays a message in a dialog box."
  },
  {
    "question": "3. What does 'document.getElementById()' do in JavaScript?",
    "options": ["Returns the element by its ID", "Changes the element's content", "Deletes the element", "Adds a new element"],
    "answer": "Returns the element by its ID",
    "explanation": "The getElementById() method returns the element that matches the specified ID."
  },
  {
    "question": "4. Which of the following is used to define variables in JavaScript?",
    "options": ["var", "let", "const", "All of the above"],
    "answer": "All of the above",
    "explanation": "Variables in JavaScript can be defined using 'var', 'let', and 'const'."
  },
  {
    "question": "5. How do you add a comment in JavaScript?",
    "options": ["// This is a comment", "/* This is a comment */", "# This is a comment", "<!-- This is a comment -->"],
    "answer": "// This is a comment",
    "explanation": "In JavaScript, single-line comments begin with '//'."
  },
  {
    "question": "6. Which method is used to write HTML output in JavaScript?",
    "options": ["document.write()", "document.output()", "print()", "console.log()"],
    "answer": "document.write()",
    "explanation": "document.write() writes text into the HTML document."
  },
  {
    "question": "7. What will the following code output?\n\nconsole.log(typeof null);",
    "options": ["null", "undefined", "object", "string"],
    "answer": "object",
    "explanation": "In JavaScript, the type of null is 'object' due to a quirk in the language's design."
  },
  {
    "question": "8. Which operator is used to compare both value and type in JavaScript?",
    "options": ["==", "!=", "===", "!=="],
    "answer": "===",
    "explanation": "The '===' operator checks both the value and the type of the operands."
  },
  {
    "question": "9. What is the correct way to declare a function in JavaScript?",
    "options": ["function myFunction() {}", "func myFunction() {}", "define myFunction() {}", "function:myFunction()"],
    "answer": "function myFunction() {}",
    "explanation": "The correct way to declare a function is using 'function' followed by the function name and parentheses."
  },
  {
    "question": "10. How can you convert a string to an integer in JavaScript?",
    "options": ["parseInt()", "toInt()", "Number()", "Both parseInt() and Number()"],
    "answer": "Both parseInt() and Number()",
    "explanation": "parseInt() and Number() are both used to convert strings to numbers in JavaScript."
  },
  {
    "question": "11. Which method is used to round a number to the nearest integer in JavaScript?",
    "options": ["Math.round()", "Math.ceil()", "Math.floor()", "Math.sqrt()"],
    "answer": "Math.round()",
    "explanation": "Math.round() rounds a number to the nearest integer."
  },
  {
    "question": "12. What will the following code return?\n\nString('123') === '123'",
    "options": ["true", "false", "undefined", "error"],
    "answer": "true",
    "explanation": "In JavaScript, the String() constructor converts a number to a string, and '===' checks for strict equality."
  },
  {
    "question": "13. How can you check if a variable 'x' is an array?",
    "options": ["Array.isArray(x)", "x instanceof Array", "Both", "None"],
    "answer": "Both",
    "explanation": "In JavaScript, you can check if a variable is an array using both Array.isArray() and instanceof."
  },
  {
    "question": "14. How do you loop through an array in JavaScript?",
    "options": ["for", "while", "forEach", "All of the above"],
    "answer": "All of the above",
    "explanation": "JavaScript allows looping through arrays using for, while, and forEach methods."
  },
  {
    "question": "15. Which of the following is not a JavaScript data type?",
    "options": ["String", "Boolean", "Integer", "Object"],
    "answer": "Integer",
    "explanation": "In JavaScript, numbers are not specifically integers or floats; they are all of the 'number' type."
  },
  {
    "question": "16. What is the use of 'setTimeout()' in JavaScript?",
    "options": ["Executes a function after a specified time", "Executes a function repeatedly", "Stops a function", "Sets a timeout for a function"],
    "answer": "Executes a function after a specified time",
    "explanation": "The setTimeout() function is used to execute a function after a specified delay."
  },
  {
    "question": "17. What is the output of the following code?\n\nconsole.log('5' + 5);",
    "options": ["10", "55", "NaN", "undefined"],
    "answer": "55",
    "explanation": "In JavaScript, when a string is added to a number, the number is coerced into a string, resulting in '55'."
  },
  {
    "question": "18. Which statement stops the execution of a loop?",
    "options": ["break", "continue", "exit", "stop"],
    "answer": "break",
    "explanation": "The break statement in JavaScript is used to terminate a loop prematurely."
  },
  {
    "question": "19. How do you declare a constant in JavaScript?",
    "options": ["let", "const", "var", "constant"],
    "answer": "const",
    "explanation": "The const keyword is used to declare constants, which cannot be reassigned."
  },
  {
    "question": "20. What will the following code output?\n\nconsole.log(2 == '2');",
    "options": ["true", "false", "error", "undefined"],
    "answer": "true",
    "explanation": "In JavaScript, the '==' operator performs type coercion and compares only the values."
  },
];

final List<Map<String, dynamic>> androidQuestions = [
  {
    "question": "1. Which language is primarily used for Android app development?",
    "options": ["Java", "Python", "C#", "Ruby"],
    "answer": "Java",
    "explanation": "Java is the official language for Android app development."
  },
  {
    "question": "2. What is the AndroidManifest.xml file used for?",
    "options": ["Defining UI elements", "Managing app permissions", "Handling database operations", "Declaring styles"],
    "answer": "Managing app permissions",
    "explanation": "AndroidManifest.xml defines essential information about the app, including permissions."
  },
  {
    "question": "3. What does APK stand for?",
    "options": ["Android Package Kit", "Android Programming Kit", "Android Program Kit", "Android Processing Kit"],
    "answer": "Android Package Kit",
    "explanation": "APK stands for Android Package Kit, which is the file format used for Android app installation."
  },
  {
    "question": "4. Which of the following is used to store data in Android?",
    "options": ["SharedPreferences", "CloudStorage", "ContextProvider", "SessionStorage"],
    "answer": "SharedPreferences",
    "explanation": "SharedPreferences is used to store simple key-value pairs in Android."
  },
  {
    "question": "5. Which layout is used to arrange elements vertically or horizontally in Android?",
    "options": ["LinearLayout", "RelativeLayout", "GridLayout", "FrameLayout"],
    "answer": "LinearLayout",
    "explanation": "LinearLayout arranges elements either vertically or horizontally."
  },
  {
    "question": "6. What does the term 'Activity' refer to in Android development?",
    "options": ["A UI screen", "A background service", "A storage container", "An HTTP request"],
    "answer": "A UI screen",
    "explanation": "An Activity represents a single UI screen in Android applications."
  },
  {
    "question": "7. Which of the following is a component of Android architecture?",
    "options": ["Linux Kernel", "Java Libraries", "Kotlin", "Python"],
    "answer": "Linux Kernel",
    "explanation": "The Android operating system is built on the Linux Kernel."
  },
  {
    "question": "8. How do you define a clickable button in Android XML layout?",
    "options": ["<Button>", "<Clickable>", "<Link>", "<Touchable>"],
    "answer": "<Button>",
    "explanation": "In Android, a button is defined using the <Button> tag in the XML layout."
  },
  {
    "question": "9. What is the purpose of 'onCreate()' in Android?",
    "options": ["To initialize an Activity", "To define the app's main entry point", "To create a service", "To handle background operations"],
    "answer": "To initialize an Activity",
    "explanation": "The onCreate() method is called when an Activity is first created, where the layout and initial logic are set up."
  },
  {
    "question": "10. What is 'ADB' in Android development?",
    "options": ["Android Debug Bridge", "Android Data Buffer", "Android Data Bridge", "Application Data Buffer"],
    "answer": "Android Debug Bridge",
    "explanation": "ADB stands for Android Debug Bridge, which is used to communicate with an emulator instance or a connected Android device."
  },
  {
    "question": "11. What is the function of the 'RecyclerView' in Android?",
    "options": ["To handle large datasets", "To manage layouts", "To perform animations", "To create SQL queries"],
    "answer": "To handle large datasets",
    "explanation": "RecyclerView is used to display large datasets efficiently by recycling views that go off-screen."
  },
  {
    "question": "12. How can an Android service run in the background?",
    "options": ["Service", "Thread", "Handler", "Intent"],
    "answer": "Service",
    "explanation": "A Service in Android allows background tasks to run without user interaction."
  },
  {
    "question": "13. Which of the following Android component handles UI elements?",
    "options": ["Activity", "ContentProvider", "BroadcastReceiver", "Service"],
    "answer": "Activity",
    "explanation": "Activities are responsible for handling the UI and user interaction in Android applications."
  },
  {
    "question": "14. How do you define a resource file in Android?",
    "options": ["res/", "drawable/", "layout/", "src/"],
    "answer": "res/",
    "explanation": "In Android, the 'res/' folder contains various resource files, including drawable, layout, values, etc."
  },
  {
    "question": "15. What is the use of 'Intent' in Android?",
    "options": ["To launch activities", "To perform background operations", "To handle gestures", "To create a database"],
    "answer": "To launch activities",
    "explanation": "Intents are used to launch activities and communicate between them in Android."
  },
  {
    "question": "16. Which tool is used for designing Android UI visually?",
    "options": ["XML Editor", "UI Editor", "Layout Editor", "Design Studio"],
    "answer": "Layout Editor",
    "explanation": "The Layout Editor in Android Studio allows developers to design the UI visually."
  },
  {
    "question": "17. How can you ensure backward compatibility in Android?",
    "options": ["Use Support Libraries", "Use Android SDK", "Use lower API levels", "Write custom code"],
    "answer": "Use Support Libraries",
    "explanation": "Support Libraries in Android allow you to use features available in newer Android versions while maintaining compatibility with older versions."
  },
  {
    "question": "18. What is the function of the 'Gradle' build system in Android?",
    "options": ["To compile Java code", "To define dependencies and build configurations", "To handle UI elements", "To manage Android services"],
    "answer": "To define dependencies and build configurations",
    "explanation": "Gradle is used for building Android apps by managing dependencies and defining build configurations."
  },
  {
    "question": "19. Which of the following is the primary tool for debugging Android applications?",
    "options": ["Logcat", "Profiler", "Emulator", "Memory Monitor"],
    "answer": "Logcat",
    "explanation": "Logcat in Android Studio is used to display logs and debug information."
  },
  {
    "question": "20. Which lifecycle method is called when an activity is about to become visible?",
    "options": ["onCreate()", "onStart()", "onResume()", "onPause()"],
    "answer": "onStart()",
    "explanation": "The onStart() method is called when the activity is becoming visible to the user."
  },
];

final List<Map<String, dynamic>> pythonQuestions = [
  {
    "question": "1. What is the output of the following code?\n\nprint(type([]))",
    "options": ["<class 'tuple'>", "<class 'list'>", "<class 'set'>", "<class 'dict'>"],
    "answer": "<class 'list'>",
    "explanation": "In Python, '[]' is used to define a list, so type([]) returns <class 'list'>."
  },
  {
    "question": "2. Which of the following is not a core data type in Python?",
    "options": ["List", "Tuple", "Class", "Dictionary"],
    "answer": "Class",
    "explanation": "In Python, Class is not a core data type; it's a way to define objects."
  },
  {
    "question": "3. What is the output of the following code?\n\nprint(2 ** 3)",
    "options": ["5", "6", "8", "9"],
    "answer": "8",
    "explanation": "In Python, '**' is the exponentiation operator, so 2 ** 3 equals 8."
  },
  {
    "question": "4. How do you create a dictionary in Python?",
    "options": ["{}", "[]", "()", "dict[]"],
    "answer": "{}",
    "explanation": "In Python, dictionaries are created using curly braces '{}'."
  },
  {
    "question": "5. What will be the output of the following code?\n\nprint(3 / 2)",
    "options": ["1", "1.5", "2", "1.0"],
    "answer": "1.5",
    "explanation": "In Python, division of two integers results in a float, so 3 / 2 equals 1.5."
  },
  {
    "question": "6. Which of the following function is used to read input from the user in Python 3.x?",
    "options": ["input()", "raw_input()", "scan()", "read()"],
    "answer": "input()",
    "explanation": "In Python 3.x, input() is used to take input from the user."
  },
  {
    "question": "7. What is the output of the following code?\n\nx = 'python'\nprint(x[0])",
    "options": ["p", "y", "n", "t"],
    "answer": "p",
    "explanation": "In Python, indexing starts from 0. So, x[0] returns the first character 'p'."
  },
  {
    "question": "8. Which of the following is not a valid Python operator?",
    "options": ["+", "-", "**", "=>"],
    "answer": "=>",
    "explanation": "'=>' is not a valid operator in Python."
  },
  {
    "question": "9. What is the correct way to define a function in Python?",
    "options": ["function myFunc():", "def myFunc():", "void myFunc():", "fun myFunc():"],
    "answer": "def myFunc():",
    "explanation": "In Python, functions are defined using the 'def' keyword."
  },
  {
    "question": "10. What will be the output of this code?\n\nprint(5 // 2)",
    "options": ["2.5", "2", "1", "3"],
    "answer": "2",
    "explanation": "'//' is the floor division operator in Python, which returns the largest integer smaller than or equal to the result. So, 5 // 2 equals 2."
  },
  {
    "question": "11. How do you start a comment in Python?",
    "options": ["//", "#", "/*", "--"],
    "answer": "#",
    "explanation": "In Python, comments are marked using the '#' symbol."
  },
  {
    "question": "12. Which of the following data structures does not allow duplicate values?",
    "options": ["List", "Tuple", "Set", "Dictionary"],
    "answer": "Set",
    "explanation": "In Python, a set is an unordered collection of unique elements."
  },
  {
    "question": "13. Which method is used to add an element to a list in Python?",
    "options": ["append()", "add()", "insert()", "extend()"],
    "answer": "append()",
    "explanation": "The append() method adds an element to the end of the list."
  },
  {
    "question": "14. What does the following code return?\n\nlen([1, 2, 3, 4])",
    "options": ["3", "4", "5", "None"],
    "answer": "4",
    "explanation": "The len() function returns the number of elements in a list, so len([1, 2, 3, 4]) is 4."
  },
  {
    "question": "15. How can you copy all elements of one list to another?",
    "options": ["list1 = list2", "list1 == list2", "list1 = list2[:]", "list1 = list2.copy()"],
    "answer": "list1 = list2[:]",
    "explanation": "In Python, slicing can be used to copy all elements of one list to another."
  },
  {
    "question": "16. What will the following code print?\n\nprint('hello' * 3)",
    "options": ["hellohellohello", "hello3", "3hello", "hello"],
    "answer": "hellohellohello",
    "explanation": "In Python, '*' is used to repeat a string a given number of times. 'hello' * 3 results in 'hellohellohello'."
  },
  {
    "question": "17. Which of the following is used to handle exceptions in Python?",
    "options": ["try-except", "catch-throw", "if-else", "error-handling"],
    "answer": "try-except",
    "explanation": "In Python, exceptions are handled using the try-except block."
  },
  {
    "question": "18. Which keyword is used to create a class in Python?",
    "options": ["class", "def", "struct", "create"],
    "answer": "class",
    "explanation": "The 'class' keyword is used to define a class in Python."
  },
  {
    "question": "19. How can you create a set in Python?",
    "options": ["{}", "()", "[]", "set()"],
    "answer": "set()",
    "explanation": "A set can be created using the set() function in Python."
  },
  {
    "question": "20. What is the output of the following code?\n\nprint('abcd'[1:3])",
    "options": ["bc", "ab", "cd", "None"],
    "answer": "bc",
    "explanation": "In Python, slicing is performed by specifying a start and stop index. So 'abcd'[1:3] returns 'bc'."
  },
];

final List<Map<String, dynamic>> javaQuestions = [
  {
    "question": "1. What is the size of an int variable in Java?",
    "options": ["4 bytes", "8 bytes", "2 bytes", "Depends on the system"],
    "answer": "4 bytes",
    "explanation": "In Java, the size of an int is always 4 bytes, regardless of the system architecture."
  },
  {
    "question": "2. Which of these is not a Java keyword?",
    "options": ["class", "public", "goto", "volatile"],
    "answer": "goto",
    "explanation": "The 'goto' keyword is reserved in Java but not used."
  },
  {
    "question": "3. What is the default value of a boolean variable in Java?",
    "options": ["true", "false", "null", "0"],
    "answer": "false",
    "explanation": "By default, a boolean in Java is initialized to false."
  },
  {
    "question": "4. Which of the following methods is used to start a thread in Java?",
    "options": ["run()", "start()", "init()", "main()"],
    "answer": "start()",
    "explanation": "The start() method is used to start a thread. It internally calls the run() method."
  },
  {
    "question": "5. Which of these exceptions is thrown when dividing by zero in Java?",
    "options": ["IOException", "ArithmeticException", "ArrayIndexOutOfBoundsException", "ClassNotFoundException"],
    "answer": "ArithmeticException",
    "explanation": "Dividing by zero in Java throws an ArithmeticException."
  },
  {
    "question": "6. What is the output of the following code?\n\nString str = \"hello\";\nSystem.out.println(str.charAt(1));",
    "options": ["e", "h", "o", "l"],
    "answer": "e",
    "explanation": "charAt(1) retrieves the character at index 1, which is 'e' in 'hello'."
  },
  {
    "question": "7. Which of these access specifiers can be used to inherit a class in Java?",
    "options": ["public", "private", "protected", "final"],
    "answer": "protected",
    "explanation": "The protected access specifier allows classes to be inherited within the same package or by subclasses."
  },
  {
    "question": "8. What does the keyword 'final' mean in Java?",
    "options": ["The variable can be changed", "The class can be extended", "The method can be overridden", "The variable or method cannot be modified"],
    "answer": "The variable or method cannot be modified",
    "explanation": "In Java, final variables cannot be reassigned, and final methods cannot be overridden."
  },
  {
    "question": "9. Which method is used to compare two strings in Java for equality?",
    "options": ["==", "equals()", "compare()", "check()"],
    "answer": "equals()",
    "explanation": "The equals() method checks if two strings have the same characters in the same sequence."
  },
  {
    "question": "10. What is the superclass of all classes in Java?",
    "options": ["Object", "Class", "String", "Runtime"],
    "answer": "Object",
    "explanation": "In Java, Object is the root class from which every class inherits."
  },
  {
    "question": "11. Which of the following is not a feature of Java?",
    "options": ["Object-Oriented", "Platform-independent", "Pointers", "Multi-threaded"],
    "answer": "Pointers",
    "explanation": "Java does not support explicit use of pointers, unlike C/C++."
  },
  {
    "question": "12. Which keyword is used to define a subclass in Java?",
    "options": ["extends", "implements", "inherits", "overrides"],
    "answer": "extends",
    "explanation": "The 'extends' keyword is used to create a subclass or to inherit from a superclass."
  },
  {
    "question": "13. What is the purpose of the 'break' statement in Java?",
    "options": ["To exit a loop or switch", "To exit the program", "To skip the current iteration", "To throw an exception"],
    "answer": "To exit a loop or switch",
    "explanation": "The break statement in Java is used to exit a loop or a switch case."
  },
  {
    "question": "14. Which package contains the Random class in Java?",
    "options": ["java.util", "java.lang", "java.io", "java.math"],
    "answer": "java.util",
    "explanation": "The Random class, which is used to generate random numbers, is part of the java.util package."
  },
  {
    "question": "15. What is an interface in Java?",
    "options": ["A class that implements methods", "A collection of abstract methods", "A class that extends another class", "A class that contains static methods"],
    "answer": "A collection of abstract methods",
    "explanation": "An interface in Java is a collection of abstract methods and constants that a class can implement."
  },
  {
    "question": "16. Which method is used to create a new instance of a thread?",
    "options": ["new Thread()", "start()", "run()", "createThread()"],
    "answer": "new Thread()",
    "explanation": "A new thread is created using the Thread class constructor 'new Thread()'."
  },
  {
    "question": "17. What is the result of '10 + 20' in Java?",
    "options": ["1020", "30", "Error", "10+20"],
    "answer": "30",
    "explanation": "In Java, the + operator adds numeric values. Here, 10 + 20 equals 30."
  },
  {
    "question": "18. Which of the following can be used to prevent inheritance in Java?",
    "options": ["final", "static", "private", "protected"],
    "answer": "final",
    "explanation": "The final keyword prevents a class from being subclassed in Java."
  },
  {
    "question": "19. Which of these loops is guaranteed to execute at least once in Java?",
    "options": ["for loop", "while loop", "do-while loop", "nested loop"],
    "answer": "do-while loop",
    "explanation": "The do-while loop checks the condition after executing the loop body, ensuring it runs at least once."
  },
  {
    "question": "20. What is the default access modifier in Java?",
    "options": ["public", "private", "protected", "default"],
    "answer": "default",
    "explanation": "If no access modifier is specified, the default access level is package-private, meaning the class is accessible within its own package."
  },
];

final List<Map<String, dynamic>> cppQuestions = [
  {
    "question": "1. What is the output of the following code?\n\n#include<stdio.h>\nint main() {\nint x = 5;\nprintf(\"%d\", x++);\nreturn 0;\n}",
    "options": ["5", "6", "Garbage value", "Compile-time error"],
    "answer": "5",
    "explanation": "Post-increment first uses the value, then increments. So, x++ outputs 5, then x becomes 6."
  },
  {
    "question": "2. Which of the following is not a valid storage class in C?",
    "options": ["auto", "static", "register", "volatile"],
    "answer": "volatile",
    "explanation": "In C, volatile is a type qualifier, not a storage class. Valid storage classes are auto, static, register, and extern."
  },
  {
    "question": "3. What is the size of int data type in a 64-bit GCC compiler?",
    "options": ["2 bytes", "4 bytes", "8 bytes", "Depends on the system"],
    "answer": "4 bytes",
    "explanation": "In most 64-bit systems, the size of an int remains 4 bytes, although pointers may be 8 bytes."
  },
  {
    "question": "4. Which of the following correctly declares a pointer to a float?",
    "options": ["float *p;", "float p*;", "*float p;", "pointer float p;"],
    "answer": "float *p;",
    "explanation": "The correct syntax to declare a pointer to a float is 'float *p;'."
  },
  {
    "question": "5. In C++, which of the following is used to define a function outside the class?",
    "options": ["::", ":", "->", "."],
    "answer": "::",
    "explanation": "The scope resolution operator (::) is used to define a function outside the class."
  },
  {
    "question": "6. Which of the following is a correct way to allocate dynamic memory in C++?",
    "options": ["int *p = new int;", "int p = malloc(sizeof(int));", "int *p = allocate();", "int *p = malloc();"],
    "answer": "int *p = new int;",
    "explanation": "In C++, dynamic memory allocation is done using 'new'. The 'malloc()' function is used in C."
  },
  {
    "question": "7. In C, what is the purpose of 'void' in a function declaration?",
    "options": ["It indicates the function does not return any value.", "It indicates the function returns an integer.", "It is used to create void pointers.", "It allocates memory dynamically."],
    "answer": "It indicates the function does not return any value.",
    "explanation": "In C, 'void' specifies that a function does not return any value."
  },
  {
    "question": "8. Which operator is used for object dereferencing in C++?",
    "options": [".", "->", "::", "*"],
    "answer": "->",
    "explanation": "The '->' operator is used to access a member of an object through a pointer."
  },
  {
    "question": "9. What will be the output of the following C++ code?\n\n#include<iostream>\nusing namespace std;\nint main() {\nint x = 10;\nint &ref = x;\nref++;\ncout << x << endl;\n}",
    "options": ["10", "11", "Compile-time error", "Garbage value"],
    "answer": "11",
    "explanation": "References act as an alias for the variable, so incrementing 'ref' also increments 'x'."
  },
  {
    "question": "10. What is the output of this C program?\n\n#include<stdio.h>\nvoid fun(int *ptr) {\n *ptr = 30;\n}\nint main() {\nint x = 10;\nfun(&x);\nprintf(\"%d\", x);\nreturn 0;\n}",
    "options": ["10", "30", "Garbage value", "Compile-time error"],
    "answer": "30",
    "explanation": "The function 'fun()' modifies the value of 'x' through its pointer, so the output will be 30."
  },
  {
    "question": "11. Which of the following is the correct way to declare an array in C?",
    "options": ["int array[10];", "array int[10];", "int 10[array];", "array[10]int;"],
    "answer": "int array[10];",
    "explanation": "In C, arrays are declared as 'int array[size];', where 'size' is a constant."
  },
  {
    "question": "12. Which keyword is used to prevent the modification of a variable?",
    "options": ["const", "static", "volatile", "mutable"],
    "answer": "const",
    "explanation": "'const' is used to declare variables whose values cannot be modified after initialization."
  },
  {
    "question": "13. Which of the following is used to terminate a loop early in C?",
    "options": ["break", "continue", "goto", "exit()"],
    "answer": "break",
    "explanation": "'break' is used to exit a loop or switch statement prematurely."
  },
  {
    "question": "14. What does the 'new' keyword do in C++?",
    "options": ["Creates a new variable", "Allocates memory dynamically", "Deletes an object", "Returns the address of a variable"],
    "answer": "Allocates memory dynamically",
    "explanation": "'new' in C++ is used to dynamically allocate memory for an object or variable."
  },
  {
    "question": "15. Which of the following is a valid destructor for the class 'Sample' in C++?",
    "options": ["Sample() {}", "~Sample() {}", "void ~Sample() {}", "~Sample(void);"],
    "answer": "~Sample() {}",
    "explanation": "The tilde (~) symbol is used to define a destructor in C++."
  },
  {
    "question": "16. What is the default return type of the main() function in C++?",
    "options": ["int", "void", "float", "char"],
    "answer": "int",
    "explanation": "The default return type of main() in C++ is int, and it usually returns 0 to indicate successful execution."
  },
  {
    "question": "17. Which of the following correctly initializes a structure in C?",
    "options": ["struct Point p = {1, 2};", "Point p = {1, 2};", "struct p = Point(1, 2);", "Point p(1, 2);"],
    "answer": "struct Point p = {1, 2};",
    "explanation": "In C, you need to use 'struct' to declare and initialize structures."
  },
  {
    "question": "18. What is the correct syntax to read a string using scanf in C?",
    "options": ["scanf(\"%s\", str);", "scanf(\"%c\", str);", "gets(str);", "cin >> str;"],
    "answer": "scanf(\"%s\", str);",
    "explanation": "In C, scanf is used to read input, and '%s' is the format specifier for strings."
  },
  {
    "question": "19. What is the output of this C code?\n\n#include<stdio.h>\nint main() {\nprintf(\"%d\", sizeof('A'));\nreturn 0;\n}",
    "options": ["1", "2", "4", "8"],
    "answer": "4",
    "explanation": "In C, a character constant like 'A' is of type int, and the size of int is typically 4 bytes."
  },
  {
    "question": "20. Which of the following cannot be overloaded in C++?",
    "options": ["+ (addition)", "= (assignment)", "-> (arrow)", ":: (scope resolution)"],
    "answer": ":: (scope resolution)",
    "explanation": "The scope resolution operator (::) cannot be overloaded in C++."
  },
];
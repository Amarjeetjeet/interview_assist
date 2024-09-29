import 'package:flutter/material.dart';
import 'package:interview_assist/coding_challanges/ui/view_solution_code_screen.dart';

import 'coding_question_widget.dart';

List<String> codingQuestions = [
  "Reverse a String: Write a function that reverses a given string.",
  "Palindrome Checker: Determine if a given string is a palindrome.",
  "Find Factorial: Write a function to find the factorial of a number.",
  "Fibonacci Sequence: Generate the first n numbers of the Fibonacci sequence.",
  "Prime Number Check: Write a function to check if a number is prime.",
  "Find GCD (Greatest Common Divisor): Implement a function to find the GCD of two numbers.",
  "Find LCM (Least Common Multiple): Write a function to calculate the LCM of two numbers.",
  "Sum of Digits: Given an integer, find the sum of its digits.",
  "Anagram Check: Determine if two strings are anagrams.",
  "Array Rotation: Rotate an array by k positions to the left.",
  "Merge Two Sorted Arrays: Write a function to merge two sorted arrays into a single sorted array.",
  "Find Duplicates in Array: Find duplicate elements in a given array.",
  "Maximum Subarray Sum: Implement Kadane's algorithm to find the maximum sum of a contiguous subarray.",
  "Find Missing Number: Given an array containing n-1 integers, find the missing number in the range 1 to n.",
  "Find Second Largest Number: Write a function to find the second-largest number in an array.",
  "Binary Search: Implement binary search to find an element in a sorted array.",
  "Matrix Transpose: Write a function to find the transpose of a matrix.",
  "Find the Intersection of Two Arrays: Return an array of the intersection of two given arrays.",
  "Check for Balanced Parentheses: Given a string of parentheses, check if they are balanced.",
  "Count Vowels in String: Write a function to count the number of vowels in a given string."
];

List<String> codingSolutions = [
//1
'''
  #include <stdio.h>

  void reverseString(char str[]) {
      int n = strlen(str);
      for (int i = 0; i < n / 2; i++) {
          char temp = str[i];
          str[i] = str[n - i - 1];
          str[n - i - 1] = temp;
      }
  }

  int main() {
      char str[] = "Hello";
      reverseString(str);
      printf("Reversed String: %s", str);
      return 0;
  }
  ''',
//2
'''
  #include <stdio.h>
  #include <string.h>

  void palindromeCheck(char str[]) {
      int n = strlen(str);
      int isPalindrome = 1;
      for (int i = 0; i < n / 2; i++) {
          if (str[i] != str[n - i - 1]) {
              isPalindrome = 0;
              break;
          }
      }
      if (isPalindrome)
          printf("Palindrome\\n");
      else
          printf("Not a Palindrome\\n");
  }

  int main() {
      char str[] = "madam";
      palindromeCheck(str);
      return 0;
  }
  ''',
//3
'''
  #include <stdio.h>

  int factorial(int n) {
      if (n == 0 || n == 1)
          return 1;
      else
          return n * factorial(n - 1);
  }

  int main() {
      int num = 5;
      printf("Factorial of %d is %d", num, factorial(num));
      return 0;
  }
  ''',
//4
'''
  #include <stdio.h>

  int fibonacci(int n) {
      if (n <= 1) return n;
      return fibonacci(n - 1) + fibonacci(n - 2);
  }

  int main() {
      int n = 10;
      printf("Fibonacci series: ");
      for (int i = 0; i < n; i++) {
          printf("%d ", fibonacci(i));
      }
      return 0;
  }
  ''',
//5
'''
  #include <stdio.h>

  int isPrime(int n) {
      if (n <= 1) return 0;
      for (int i = 2; i <= n / 2; i++) {
          if (n % i == 0) return 0;
      }
      return 1;
  }

  int main() {
      int num = 29;
      if (isPrime(num))
          printf("%d is a prime number", num);
      else
          printf("%d is not a prime number", num);
      return 0;
  }
  ''',
//6
'''
  #include <stdio.h>

  void bubbleSort(int arr[], int n) {
      for (int i = 0; i < n-1; i++) {
          for (int j = 0; j < n-i-1; j++) {
              if (arr[j] > arr[j+1]) {
                  int temp = arr[j];
                  arr[j] = arr[j+1];
                  arr[j+1] = temp;
              }
          }
      }
  }

  int main() {
      int arr[] = {64, 25, 12, 22, 11};
      int n = sizeof(arr) / sizeof(arr[0]);
      bubbleSort(arr, n);
      printf("Sorted array: ");
      for (int i = 0; i < n; i++) {
          printf("%d ", arr[i]);
      }
      return 0;
  }
  ''',
//7
'''
  #include <stdio.h>

  void swap(int* a, int* b) {
      int temp = *a;
      *a = *b;
      *b = temp;
  }

  int main() {
      int a = 5, b = 10;
      printf("Before swap: a = %d, b = %d\\n", a, b);
      swap(&a, &b);
      printf("After swap: a = %d, b = %d\\n", a, b);
      return 0;
  }
  ''',
//8
'''
  #include <stdio.h>

  int gcd(int a, int b) {
      if (b == 0)
          return a;
      return gcd(b, a % b);
  }

  int main() {
      int a = 56, b = 98;
      printf("GCD of %d and %d is %d", a, b, gcd(a, b));
      return 0;
  }
  ''',
//9
'''
  #include <stdio.h>

  void printMatrix(int arr[3][3], int n) {
      for (int i = 0; i < n; i++) {
          for (int j = 0; j < n; j++) {
              printf("%d ", arr[i][j]);
          }
          printf("\\n");
      }
  }

  int main() {
      int arr[3][3] = {{1, 2, 3}, {4, 5, 6}, {7, 8, 9}};
      printMatrix(arr, 3);
      return 0;
  }
  ''',
//10
'''
  #include <stdio.h>
  #include <string.h>

  void removeDuplicates(char str[]) {
      int len = strlen(str);
      int index = 0;
      for (int i = 0; i < len; i++) {
          int j;
          for (j = 0; j < i; j++) {
              if (str[i] == str[j]) {
                  break;
              }
          }
          if (j == i) {
              str[index++] = str[i];
          }
      }
      str[index] = '\\0';
  }

  int main() {
      char str[] = "programming";
      removeDuplicates(str);
      printf("String after removing duplicates: %s", str);
      return 0;
  }
  ''',
//11
'''
  #include <stdio.h>

  void mergeArrays(int arr1[], int arr2[], int n1, int n2, int arr3[]) {
      int i = 0, j = 0, k = 0;
      while (i < n1 && j < n2) {
          if (arr1[i] < arr2[j])
              arr3[k++] = arr1[i++];
          else
              arr3[k++] = arr2[j++];
      }
      while (i < n1)
          arr3[k++] = arr1[i++];
      while (j < n2)
          arr3[k++] = arr2[j++];
  }

  int main() {
      int arr1[] = {1, 3, 5, 7};
      int arr2[] = {2, 4, 6, 8};
      int n1 = 4, n2 = 4;
      int arr3[n1 + n2];

      mergeArrays(arr1, arr2, n1, n2, arr3);

      printf("Merged Array: ");
      for (int i = 0; i < n1 + n2; i++) {
          printf("%d ", arr3[i]);
      }

      return 0;
  }
  ''',
//12
'''
  #include <stdio.h>

  void findDuplicates(int arr[], int n) {
      int found = 0;
      printf("Duplicates: ");
      for (int i = 0; i < n; i++) {
          for (int j = i + 1; j < n; j++) {
              if (arr[i] == arr[j]) {
                  printf("%d ", arr[i]);
                  found = 1;
              }
          }
      }
      if (!found) {
          printf("None");
      }
  }

  int main() {
      int arr[] = {1, 2, 3, 4, 2, 5, 6, 3};
      int n = sizeof(arr) / sizeof(arr[0]);

      findDuplicates(arr, n);
      return 0;
  }
  ''',
//13
'''
  #include <stdio.h>

  int maxSubArraySum(int arr[], int n) {
      int maxSoFar = arr[0], maxEndingHere = arr[0];
      for (int i = 1; i < n; i++) {
          maxEndingHere = (arr[i] > maxEndingHere + arr[i]) ? arr[i] : maxEndingHere + arr[i];
          maxSoFar = (maxSoFar > maxEndingHere) ? maxSoFar : maxEndingHere;
      }
      return maxSoFar;
  }

  int main() {
      int arr[] = {-2, 1, -3, 4, -1, 2, 1, -5, 4};
      int n = sizeof(arr) / sizeof(arr[0]);

      int maxSum = maxSubArraySum(arr, n);
      printf("Maximum Subarray Sum is %d\\n", maxSum);
      return 0;
  }
  ''',
//14
'''
  #include <stdio.h>

  int findMissingNumber(int arr[], int n) {
      int sum = (n * (n + 1)) / 2;
      int arrSum = 0;
      for (int i = 0; i < n - 1; i++) {
          arrSum += arr[i];
      }
      return sum - arrSum;
  }

  int main() {
      int arr[] = {1, 2, 3, 5};
      int n = 5;  // We are supposed to have numbers from 1 to 5
      
      int missing = findMissingNumber(arr, n);
      printf("Missing Number is %d\\n", missing);
      
      return 0;
  }
  ''',
//15
'''
  #include <stdio.h>

  int secondLargest(int arr[], int n) {
      int first = -1, second = -1;
      for (int i = 0; i < n; i++) {
          if (arr[i] > first) {
              second = first;
              first = arr[i];
          } else if (arr[i] > second && arr[i] != first) {
              second = arr[i];
          }
      }
      return second;
  }

  int main() {
      int arr[] = {12, 35, 1, 10, 34, 1};
      int n = sizeof(arr) / sizeof(arr[0]);
      
      int result = secondLargest(arr, n);
      printf("Second Largest Element is %d\\n", result);
      
      return 0;
  }
  ''',
//16
'''
  #include <stdio.h>

  int binarySearch(int arr[], int l, int r, int x) {
      while (l <= r) {
          int mid = l + (r - l) / 2;
          if (arr[mid] == x)
              return mid;
          if (arr[mid] < x)
              l = mid + 1;
          else
              r = mid - 1;
      }
      return -1;
  }

  int main() {
      int arr[] = {2, 3, 4, 10, 40};
      int n = sizeof(arr) / sizeof(arr[0]);
      int x = 10;
      
      int result = binarySearch(arr, 0, n - 1, x);
      if (result == -1)
          printf("Element not found\\n");
      else
          printf("Element found at index %d\\n", result);
      
      return 0;
  }
  ''',
//17
'''
  #include <stdio.h>

  void transpose(int matrix[3][3], int transposed[3][3]) {
      for (int i = 0; i < 3; i++) {
          for (int j = 0; j < 3; j++) {
              transposed[i][j] = matrix[j][i];
          }
      }
  }

  int main() {
      int matrix[3][3] = {{1, 2, 3}, {4, 5, 6}, {7, 8, 9}};
      int transposed[3][3];
      
      transpose(matrix, transposed);
      
      printf("Transposed Matrix:\\n");
      for (int i = 0; i < 3; i++) {
          for (int j = 0; j < 3; j++) {
              printf("%d ", transposed[i][j]);
          }
          printf("\\n");
      }
      
      return 0;
  }
  ''',
//18
'''
  #include <stdio.h>

  void printIntersection(int arr1[], int arr2[], int n1, int n2) {
      printf("Intersection: ");
      for (int i = 0; i < n1; i++) {
          for (int j = 0; j < n2; j++) {
              if (arr1[i] == arr2[j]) {
                  printf("%d ", arr1[i]);
                  break;
              }
          }
      }
  }

  int main() {
      int arr1[] = {1, 2, 3, 4, 5};
      int arr2[] = {3, 4, 5, 6, 7};
      
      int n1 = sizeof(arr1) / sizeof(arr1[0]);
      int n2 = sizeof(arr2) / sizeof(arr2[0]);
      
      printIntersection(arr1, arr2, n1, n2);
      return 0;
  }
  ''',
//19
'''
  #include <stdio.h>
  #include <stdbool.h>

  #define MAX 100

  bool isMatchingPair(char left, char right) {
      return (left == '(' && right == ')') || (left == '{' && right == '}') || (left == '[' && right == ']');
  }

  bool areParenthesesBalanced(char exp[]) {
      char stack[MAX];
      int top = -1;

      for (int i = 0; exp[i] != '\\0'; i++) {
          if (exp[i] == '(' || exp[i] == '{' || exp[i] == '[') {
              stack[++top] = exp[i];
          } else if (exp[i] == ')' || exp[i] == '}' || exp[i] == ']') {
              if (top == -1 || !isMatchingPair(stack[top--], exp[i]))
                  return false;
          }
      }

      return top == -1;
  }

  int main() {
      char exp[] = "{[()]}";
      
      if (areParenthesesBalanced(exp))
          printf("Balanced\\n");
      else
          printf("Not Balanced\\n");
      
      return 0;
  }
  ''',
// 20
'''
   #include <stdio.h>
  #include <ctype.h>

  int countVowels(char str[]) {
      int count = 0;
      for (int i = 0; str[i] != '\\0'; i++) {
          char ch = tolower(str[i]);
          if (ch == 'a' || ch == 'e' || ch == 'i' || ch == 'o' || ch == 'u') {
              count++;
          }
      }
      return count;
  }

  int main() {
      char str[] = "Hello World";
      
      int vowels = countVowels(str);
      printf("Number of vowels: %d\\n", vowels);
      
      return 0;
  }
  '''
];

class CodingChallengesScreen extends StatefulWidget {
  const CodingChallengesScreen({super.key});

  @override
  State<CodingChallengesScreen> createState() => _CodingChallengesScreenState();
}

class _CodingChallengesScreenState extends State<CodingChallengesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Coding Challenge"),
      ),
      body: ListView.builder(
        itemCount: codingQuestions.length,
        itemBuilder: (context, index) {
          return CodingQuestionWidget(
            question: codingQuestions[index],
            index: index,
            onPressed: (value) {
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => ViewSolutionCodeScreen(
                    title: value,
                    code: codingSolutions[index],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

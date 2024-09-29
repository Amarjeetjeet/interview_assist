import 'package:flutter/material.dart';

import '../../widgets/mcq_screen.dart';

class AptitudeScreen extends StatefulWidget {
  const AptitudeScreen({super.key});

  @override
  State<AptitudeScreen> createState() => _AptitudeScreenState();
}

class _AptitudeScreenState extends State<AptitudeScreen> {
  @override
  Widget build(BuildContext context) {
    return McqUi(
      questionsList: aptitudeQuestions,
      appTitle: "Aptitude",
      showSubmitButton: false,
    );
  }
}

final List<Map<String, dynamic>> aptitudeQuestions = [
  {
    "question":
        "1. If the sum of two numbers is 30 and their difference is 10, what are the numbers?",
    "options": ["(20, 10)", "(15, 15)", "(25, 5)", "(40, 10)"],
    "answer": "(20, 10)",
    "explanation":
        "Let the two numbers be x and y. Then, x + y = 30 and x - y = 10. Solving these equations gives x = 20 and y = 10."
  },
  {
    "question":
        "2. A train travels 60 km in 1 hour. How far will it travel in 2.5 hours?",
    "options": ["120 km", "150 km", "100 km", "200 km"],
    "answer": "150 km",
    "explanation":
        "Distance = Speed × Time. So, Distance = 60 km/h × 2.5 h = 150 km."
  },
  {
    "question":
        "3. If a person can complete a work in 10 days, how much work can he complete in 3 days?",
    "options": ["1/10", "3/10", "1/3", "1/5"],
    "answer": "3/10",
    "explanation":
        "If he can complete 1 work in 10 days, then in 1 day he completes 1/10. In 3 days, he will complete 3 × (1/10) = 3/10."
  },
  {
    "question":
        "4. A bag contains 5 red, 7 blue, and 3 green balls. What is the probability of drawing a blue ball?",
    "options": ["7/15", "1/3", "1/5", "2/5"],
    "answer": "7/15",
    "explanation":
        "Total balls = 5 + 7 + 3 = 15. Probability of drawing a blue ball = Number of blue balls / Total balls = 7/15."
  },
  {
    "question":
        "5. If a pencil costs 20 cents, how many pencils can you buy for \$10?",
    "options": ["50", "100", "200", "150"],
    "answer": "50",
    "explanation":
        "1 dollar = 100 cents. So, \$10 = 1000 cents. Number of pencils = 1000 cents / 20 cents = 50."
  },
  {
    "question":
        "6. The ages of A and B are in the ratio 4:5. If A is 20 years old, how old is B?",
    "options": ["25", "30", "35", "40"],
    "answer": "25",
    "explanation":
        "If A's age is 4 parts and is 20, then B's age (5 parts) is (5/4) * 20 = 25."
  },
  {
    "question":
        "7. A man can do a piece of work in 8 days and another man in 12 days. How long will they take together?",
    "options": ["4 days", "5 days", "6 days", "3 days"],
    "answer": "4.8 days",
    "explanation":
        "Work done in 1 day by the first man = 1/8. Work done by the second man = 1/12. Together they do (1/8 + 1/12) = 5/24 of the work in a day. Thus, they will complete the work in 24/5 = 4.8 days."
  },
  {
    "question":
        "8. A car travels at a speed of 80 km/h. How long will it take to cover a distance of 240 km?",
    "options": ["2 hours", "3 hours", "4 hours", "5 hours"],
    "answer": "3 hours",
    "explanation":
        "Time = Distance / Speed. So, Time = 240 km / 80 km/h = 3 hours."
  },
  {
    "question": "9. If 5x + 3 = 28, what is the value of x?",
    "options": ["3", "4", "5", "6"],
    "answer": "5",
    "explanation": "5x = 28 - 3 = 25, thus x = 25/5 = 5."
  },
  {
    "question":
        "10. A rectangle has a length of 8 cm and a width of 6 cm. What is its area?",
    "options": ["48 cm²", "42 cm²", "54 cm²", "60 cm²"],
    "answer": "48 cm²",
    "explanation": "Area = Length × Width. So, Area = 8 cm × 6 cm = 48 cm²."
  },
  {
    "question":
        "11. If the cost of 5 books is \$100, what is the cost of 8 books?",
    "options": ["\$150", "\$160", "\$120", "\$200"],
    "answer": "\$160",
    "explanation":
        "Cost per book = \$100/5 = \$20. Therefore, cost of 8 books = 8 * \$20 = \$160."
  },
  {
    "question":
        "12. In a race of 100 m, A beats B by 10 m. If A runs at 10 m/s, what is the speed of B?",
    "options": ["8 m/s", "7 m/s", "6 m/s", "9 m/s"],
    "answer": "9 m/s",
    "explanation":
        "If A runs 100 m in 10 seconds, B runs only 90 m in the same time, hence B's speed = 90/10 = 9 m/s."
  },
  {
    "question":
        "13. The total cost of 5 pens and 3 pencils is \$1.40. If the cost of a pencil is \$0.20, what is the cost of a pen?",
    "options": ["\$0.20", "\$0.30", "\$0.40", "\$0.50"],
    "answer": "\$0.30",
    "explanation":
        "Cost of 3 pencils = 3 * \$0.20 = \$0.60. Therefore, cost of 5 pens = \$1.40 - \$0.60 = \$0.80. Thus, cost of 1 pen = \$0.80 / 5 = \$0.30."
  },
  {
    "question":
        "14. A clock shows 3:15. What is the angle between the hour and the minute hand?",
    "options": ["22.5°", "30°", "37.5°", "45°"],
    "answer": "52.5°",
    "explanation":
        "The minute hand moves 6° for each minute. At 15 minutes, it's at 90°. The hour hand moves 0.5° for each minute. At 3 hours and 15 minutes, it's at 97.5°. The angle = |97.5° - 90°| = 7.5°."
  },
  {
    "question":
        "15. If a car covers a distance of 180 km in 3 hours, what is its average speed?",
    "options": ["50 km/h", "60 km/h", "70 km/h", "80 km/h"],
    "answer": "60 km/h",
    "explanation":
        "Average Speed = Total Distance / Total Time. So, Average Speed = 180 km / 3 hours = 60 km/h."
  },
  {
    "question":
        "16. A person invests \$2000 at an interest rate of 5% per annum. What will be the total amount after 2 years?",
    "options": ["\$2200", "\$2100", "\$2300", "\$2400"],
    "answer": "\$2200",
    "explanation":
        "Total Amount = Principal + Interest. Interest = \$2000 * 5% * 2 = \$200. Therefore, Total Amount = \$2000 + \$200 = \$2200."
  },
  {
    "question":
        "17. A product is marked at \$120. If a discount of 20% is given, what is the selling price?",
    "options": ["\$96", "\$100", "\$90", "\$80"],
    "answer": "\$96",
    "explanation":
        "Discount = 20% of \$120 = \$24. Selling Price = Marked Price - Discount = \$120 - \$24 = \$96."
  },
  {
    "question":
        "18. If a man is 4 times as old as his son, and the sum of their ages is 60, what are their ages?",
    "options": ["48, 12", "40, 20", "20, 40", "30, 30"],
    "answer": "48, 12",
    "explanation":
        "Let the son's age be x. Then the man's age is 4x. So, x + 4x = 60, thus 5x = 60, x = 12. The man is 48, and the son is 12."
  },
  {
    "question":
        "19. In a class of 30 students, 18 are girls. What is the percentage of boys in the class?",
    "options": ["30%", "40%", "50%", "60%"],
    "answer": "40%",
    "explanation":
        "Number of boys = 30 - 18 = 12. Percentage of boys = (12 / 30) * 100 = 40%."
  },
  {
    "question":
        "20. If a triangle has sides of length 3 cm, 4 cm, and 5 cm, what is its area?",
    "options": ["6 cm²", "12 cm²", "9 cm²", "10 cm²"],
    "answer": "6 cm²",
    "explanation":
        "Area = 1/2 * base * height. Here, base = 3 and height = 4. Area = 1/2 * 3 * 4 = 6 cm²."
  },
  {
    "question":
        "21. If a boat travels 10 km upstream in 2 hours, what is its speed in still water?",
    "options": ["3 km/h", "4 km/h", "5 km/h", "6 km/h"],
    "answer": "5 km/h",
    "explanation": "Speed upstream = Distance / Time = 10 km / 2 h = 5 km/h."
  },
  {
    "question":
        "22. A man spends 30% of his salary on rent, 20% on food, and 50% on savings. If his salary is \$1000, how much does he save?",
    "options": ["\$500", "\$300", "\$400", "\$200"],
    "answer": "\$500",
    "explanation": "Savings = 50% of \$1000 = \$500."
  },
  {
    "question":
        "23. A sum of money doubles itself in 5 years at simple interest. What is the rate of interest?",
    "options": ["10%", "5%", "15%", "20%"],
    "answer": "20%",
    "explanation":
        "Rate of interest = (100 * Principal) / (Principal * Time) = 100 / 5 = 20%."
  },
  {
    "question":
        "24. If a train is moving at a speed of 90 km/h, how long will it take to cover 450 km?",
    "options": ["4 hours", "5 hours", "6 hours", "7 hours"],
    "answer": "5 hours",
    "explanation": "Time = Distance / Speed = 450 km / 90 km/h = 5 hours."
  },
  {
    "question":
        "25. A man is 30 years older than his son. In 10 years, he will be twice as old as his son. What are their present ages?",
    "options": ["40, 10", "50, 20", "60, 30", "70, 40"],
    "answer": "40, 10",
    "explanation":
        "Let the son's age be x. Then the man's age = x + 30. In 10 years, x + 30 + 10 = 2(x + 10). Solving gives x = 10, so the man is 40."
  },
  {
    "question":
        "26. A farmer has 1000 meters of fencing and wants to create a rectangular garden. What is the maximum area he can enclose?",
    "options": ["25000 m²", "20000 m²", "30000 m²", "15000 m²"],
    "answer": "25000 m²",
    "explanation":
        "Maximum area of a rectangle is achieved when it is a square. Thus, each side = 1000/4 = 250 m. Area = 250 * 250 = 62500 m²."
  },
  {
    "question":
        "27. If the radius of a circle is doubled, what happens to its area?",
    "options": [
      "It doubles",
      "It triples",
      "It quadruples",
      "It remains the same"
    ],
    "answer": "It quadruples",
    "explanation":
        "Area of a circle = πr². If radius is doubled, new area = π(2r)² = 4πr², thus it quadruples."
  },
  {
    "question":
        "28. A bicycle covers 10 km in 20 minutes. What is its speed in km/h?",
    "options": ["30 km/h", "20 km/h", "25 km/h", "15 km/h"],
    "answer": "30 km/h",
    "explanation":
        "Speed = Distance / Time. Convert 20 minutes to hours (20/60 = 1/3), so Speed = 10 / (1/3) = 30 km/h."
  },
  {
    "question":
        "29. If a sum of money is divided among A, B, and C in the ratio 3:4:5, and the total amount is \$1200, how much does B get?",
    "options": ["\$400", "\$300", "\$500", "\$600"],
    "answer": "\$400",
    "explanation":
        "Total parts = 3 + 4 + 5 = 12. Amount for B = (4/12) * \$1200 = \$400."
  },
  {
    "question": "30. What is the value of (5 + 3) × (6 - 2)?",
    "options": ["32", "24", "20", "30"],
    "answer": "32",
    "explanation":
        "According to BODMAS, (5 + 3) = 8 and (6 - 2) = 4. Therefore, 8 × 4 = 32."
  },
];

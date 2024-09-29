import 'package:flutter/material.dart';

class CodingQuestionWidget extends StatelessWidget {
  final String question;
  final int index;
  final void Function(String) onPressed;

  const CodingQuestionWidget({
    super.key,
    required this.question,
    required this.index,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    // Split the question into two parts: before and after the colon
    final parts = question.split(':');
    final boldPart = parts[0];
    final remainingPart = parts.length > 1 ? parts[1] : '';

    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                style: DefaultTextStyle.of(context).style, // Default text style
                children: [
                  TextSpan(
                    text: "${index + 1}. ", // Bold part before the colon
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: "$boldPart:", // Bold part before the colon
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: remainingPart, // Regular text part after the colon
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
              onPressed: (){
                onPressed(boldPart);
              },
              style: ElevatedButton.styleFrom(
                elevation: 0,
                backgroundColor: Theme.of(context).primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              child: const Text(
                "View Solution in C",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

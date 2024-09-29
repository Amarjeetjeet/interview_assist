import 'package:flutter/material.dart';

class MyRadioButton extends StatefulWidget {
  final Map<String, dynamic> aptitudeQuestions;
  final String? selectedAnswer;
  final Function(String?)
      onAnswerSelected; // Callback to notify parent about selected answer

  const MyRadioButton({
    super.key,
    required this.aptitudeQuestions,
    required this.selectedAnswer,
    required this.onAnswerSelected,
  });

  @override
  State<MyRadioButton> createState() => _MyRadioButtonState();
}

class _MyRadioButtonState extends State<MyRadioButton> {
  @override
  Widget build(BuildContext context) {
    final isCorrect =
        widget.selectedAnswer == widget.aptitudeQuestions["answer"];

    return Column(
      children:
          List.generate(widget.aptitudeQuestions["options"].length, (index) {
        return RadioListTile(
          title: Text(widget.aptitudeQuestions["options"][index]),
          value: widget.aptitudeQuestions["options"][index],
          groupValue: widget.selectedAnswer,
          // Show the selected answer
          onChanged: (value) {
            setState(() {
              widget.onAnswerSelected(value
                  as String?); // Pass the selected answer to the parent widget
            });
          },
          activeColor: isCorrect ? Colors.green : Colors.red,
          tileColor: (widget.selectedAnswer ==
                  widget.aptitudeQuestions["options"][index])
              ? (isCorrect ? Colors.green[200] : Colors.red[200])
              : null,
        );
      }),
    );
  }
}

class ExplanationButton extends StatefulWidget {
  final int index;
  final List<Map<String, dynamic>> aptitudeQuestions;

  const ExplanationButton({
    super.key,
    required this.index,
    required this.aptitudeQuestions,
  });

  @override
  State<ExplanationButton> createState() => _ExplanationButtonState();
}

class _ExplanationButtonState extends State<ExplanationButton> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () {
            setState(() {
              _isExpanded = !_isExpanded;
            });
          },
          child: Text(_isExpanded ? 'Hide Explanation' : 'Show Explanation'),
        ),
        if (_isExpanded)
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              widget.aptitudeQuestions[widget.index]["explanation"],
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
      ],
    );
  }
}

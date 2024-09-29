import 'package:flutter/material.dart';
import 'package:flutter_syntax_view/flutter_syntax_view.dart';

class ViewSolutionCodeScreen extends StatelessWidget {
  const ViewSolutionCodeScreen({
    super.key,
    required this.title,
    required this.code,
  });

  final String title,code;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: FittedBox(child: Text(title)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SafeArea(
          child: SyntaxView(
            code: code,
            // Code to highlight
            syntax: Syntax.C,
            // Language
            syntaxTheme: SyntaxTheme.dracula(),
            // Theme
            fontSize: 12.0,
            // Font size
            withZoom: true,
            // Enable/Disable zoom icon controls
            withLinesCount: true,
            // Show line number
            expanded: true, // Take up available space
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_reviews/ui/review_screen.dart';

void main() {
  runApp(const FilmsReviewApp());
}

class FilmsReviewApp extends StatelessWidget {
  const FilmsReviewApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Review(),
    );
  }  
}

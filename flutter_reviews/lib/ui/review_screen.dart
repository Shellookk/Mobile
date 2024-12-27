import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  const Review({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: <Widget>[
        const Text("Nome do Filme"),
        TextFormField(),
        const Text("Estrelas"),
        TextFormField(),
        const Text("Review"),
        TextFormField(),
        const Text("Data"),
        TextFormField(),        
      ],),
    );
  }
}
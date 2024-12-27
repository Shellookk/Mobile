import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset("assets/images/banner.png"),
          Align(
              alignment: Alignment.bottomLeft,
              child: Image.asset("assets/images/stars.png")),
          Padding(
            padding: const EdgeInsets.all(32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const SizedBox(height: 128),
                Image.asset(
                  "assets/images/logo.png",
                  width: 120,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(height: 32),
                    const Text(
                      "Sistema de gestão de contas",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 32),
                    ),
                    const SizedBox(height: 32),
                    TextFormField(
                      decoration: InputDecoration(label: Text("Email")),
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(label: Text("Senha")),
                    ),
                    const SizedBox(height: 32),
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          backgroundColor: WidgetStatePropertyAll(
                        Color(0XFFFFA902),
                      )),
                      child: Text(
                        "Entrar",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

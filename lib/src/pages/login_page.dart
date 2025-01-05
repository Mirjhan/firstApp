import 'package:flutter/material.dart';

// ignore: must_be_immutable
class LoginPage extends StatefulWidget {
  int lastCount;

  LoginPage({
    super.key,
    required this.lastCount,
  });

  @override
  State<LoginPage> createState() => _LoginPageState(lastCount: lastCount);
}

class _LoginPageState extends State<LoginPage> {
  int lastCount;

  _LoginPageState({
    required this.lastCount,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Cantidad anterior: $lastCount')),
    );
  }
}

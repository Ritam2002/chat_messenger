import 'package:flutter/material.dart';
import 'package:chat_messenger/utility/components.dart';
import 'package:chat_messenger/utility/constants.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: Hero(
                tag: 'logo',
                child: Container(
                    height: 80, child: Image.asset('Images/logo.png')),
              ),
            ),
            TextEntry(
              hintText: "Enter email",
              icon: Icons.email,
              keyboardType: TextInputType.emailAddress,
            ),
            TextEntry(
              hintText: "Enter password",
              icon: Icons.key,
              keyboardType: TextInputType.text,
            ),
            ButtonRound(
                onPressed: () {
                  Navigator.pushNamed(context, RouteTable.selectChat);
                },
                title: 'Login',
                color: AppColors.primarycolor),
            TextButton(
                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.all(
                    Colors.transparent,
                  ),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Not registered?'))
          ],
        ),
      ),
    );
  }
}

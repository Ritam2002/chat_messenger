import 'package:chat_messenger/utility/components.dart';
import 'package:chat_messenger/utility/constants.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
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
                onPressed: () {},
                title: 'Register',
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
                child: Text('Already registered?'))
          ],
        ),
      ),
    );
  }
}

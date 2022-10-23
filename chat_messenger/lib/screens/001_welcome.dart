import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:chat_messenger/utility/components.dart';
import 'package:chat_messenger/utility/constants.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation animation;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    animation = ColorTween(
      begin: Colors.red,
      end: Colors.white,
    ).animate(controller);
    controller.forward();
    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: animation.value,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Hero(
                tag: 'logo',
                child: Container(
                    height: 80, child: Image.asset('Images/logo.png')),
              ),
              AnimatedTextKit(
                animatedTexts: [
                  TyperAnimatedText(
                    'MyChat',
                    textStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: AppColors.primarycolor),
                    speed: Duration(milliseconds: 80),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 20),
          ButtonRound(
            onPressed: () {
              Navigator.pushNamed(context, RouteTable.login);
            },
            title: 'login',
            color: AppColors.primarycolor,
          ),
          ButtonRound(
            onPressed: () {
              Navigator.pushNamed(context, RouteTable.register);
            },
            title: 'Register',
            color: AppColors.primarycolor,
          ),
        ],
      ),
    );
  }
}

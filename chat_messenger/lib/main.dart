import 'package:chat_messenger/screens/001_welcome.dart';
import 'package:chat_messenger/screens/002_login.dart';
import 'package:chat_messenger/screens/003_register.dart';
import 'package:chat_messenger/screens/004_chatselect.dart';
import 'package:chat_messenger/screens/005_chats.dart';
import 'package:chat_messenger/screens/userprofile_screen.dart';
import 'package:chat_messenger/utility/constants.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: RouteTable.welcome, routes: {
      RouteTable.welcome: ((context) => WelcomeScreen()),
      RouteTable.login: ((context) => LoginScreen()),
      RouteTable.register: ((context) => RegisterScreen()),
      RouteTable.selectChat: ((context) => SelectChat()),
      RouteTable.chat: ((context) => ChatScreen()),
      RouteTable.userProfile: ((context) => userProfile()),
    });
  }
}

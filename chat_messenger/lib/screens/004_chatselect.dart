import 'package:chat_messenger/utility/components.dart';
import 'package:chat_messenger/utility/constants.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class SelectChat extends StatefulWidget {
  const SelectChat({Key? key}) : super(key: key);

  @override
  State<SelectChat> createState() => _SelectChatState();
}

class _SelectChatState extends State<SelectChat> {
  List<String> users = [
    'ritam@gmail.com',
    'rims@gmail.com',
    'ieva@gmail.com',
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primarycolor,
        leading: SizedBox(),
        elevation: 30,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          )
        ],
        title: Text(
          'MyChat',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            for (String username in users)
              ChatCard(
                username: username,
                onTap: () {
                  Navigator.pushNamed(context, RouteTable.chat);
                },
              ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          selectedItemColor: Colors.black,
          onTap: (ind) {
            if (ind != currentIndex) {
              if (ind == 0) {
                Navigator.pushNamed(context, RouteTable.selectChat);
              } else if (ind == 1) {
                Navigator.pushNamed(context, RouteTable.userProfile);
              }
            }
          },
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chat"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          ]),
    );
  }
}

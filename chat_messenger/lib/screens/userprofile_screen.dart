import 'package:chat_messenger/utility/constants.dart';
import 'package:flutter/material.dart';

class userProfile extends StatefulWidget {
  const userProfile({Key? key}) : super(key: key);

  @override
  State<userProfile> createState() => _userProfileState();
}

class _userProfileState extends State<userProfile> {
  int currentIndex = 1;
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
          children: [],
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

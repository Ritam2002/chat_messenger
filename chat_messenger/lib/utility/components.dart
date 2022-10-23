import 'package:chat_messenger/utility/constants.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class ButtonRound extends StatelessWidget {
  const ButtonRound({
    Key? key,
    required this.onPressed,
    required this.title,
    required this.color,
    this.isIcon = false,
  }) : super(key: key);
  final onPressed;
  final String title;
  final color;
  final bool isIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Material(
        borderRadius: BorderRadius.circular(30),
        color: AppColors.primarycolor,
        elevation: 5,
        child: MaterialButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(30),
            ),
          ),
          height: 60,
          minWidth: 250,
          onPressed: onPressed,
          child: isIcon
              ? Icon(
                  Icons.send,
                  color: Colors.black,
                )
              : Text(
                  title,
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
        ),
      ),
    );
  }
}

class TextEntry extends StatelessWidget {
  const TextEntry({
    Key? key,
    this.onChanged,
    this.keyboardType,
    this.obscureText = false,
    this.hintText,
    this.icon,
  }) : super(key: key);
  final onChanged;
  final keyboardType;
  final obscureText;
  final hintText;
  final icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: TextField(
        cursorColor: Colors.black,
        onChanged: onChanged,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.emailAddress,
        obscureText: obscureText,
        decoration: InputDecoration(
          hintText: hintText,
          prefixIcon: Icon(
            icon,
            color: Colors.black,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(
              color: AppColors.primarycolor,
              width: 2,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
    );
  }
}

class ChatCard extends StatelessWidget {
  const ChatCard({
    Key? key,
    this.onTap,
    this.username = "",
  }) : super(key: key);
  final onTap;
  final username;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Color.fromARGB(
                    255,
                    Random().nextInt(255),
                    Random().nextInt(255),
                    Random().nextInt(255),
                  ),
                  child: Icon(Icons.person),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    Text(username),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.black,
            indent: 10,
            endIndent: 10,
            thickness: 0.2,
          )
        ],
      ),
    );
  }
}

class MessageBubble extends StatelessWidget {
  const MessageBubble({
    Key? key,
    this.username = "",
    this.isMe = false,
    this.message = "",
  }) : super(key: key);
  final username;
  final bool isMe;
  final message;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: isMe
          ? const EdgeInsets.only(
              top: 10,
              bottom: 10,
              right: 10,
              left: 60,
            )
          : const EdgeInsets.only(
              top: 10,
              bottom: 10,
              right: 60,
              left: 10,
            ),
      child: Column(
        crossAxisAlignment:
            isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Text(
            username,
            style: TextStyle(
              color: Colors.black,
              fontSize: 12,
            ),
          ),
          Material(
            elevation: 2,
            color: isMe ? Colors.white30 : Colors.white60,
            borderRadius: isMe
                ? const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  )
                : const BorderRadius.only(
                    topRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Text(
                message,
                style: TextStyle(
                  color: isMe ? Colors.white : Colors.black,
                  fontSize: 15,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:chat_messenger/utility/components.dart';
import 'package:chat_messenger/utility/constants.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  List<Map> messageData = [
    {
      "username": 'ritam',
      'message': 'hello dear',
      'isMe': false,
    },
    {
      'username': 'meesho',
      'message': 'hey hi dear',
      'isMe': true,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primarycolor,
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
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                for (var msgData in messageData)
                  MessageBubble(
                    isMe: msgData['isMe'],
                    username: msgData['username'],
                    message: msgData['message'],
                  ),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextEntry(
                      hintText: 'Message',
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ButtonRound(
                        onPressed: () {},
                        title: 'send',
                        isIcon: true,
                        color: AppColors.primarycolor),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.pink[200],
        title: Row(
          children: [
            Image.asset('assets/images/message-me.jpeg', height: 25),
            const SizedBox(width: 10),
            Text('MessageMe')
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
              // add here logout function
            },
            icon: Icon(Icons.close),
          )
        ],
      ),
      body:
          Container(
           decoration: const BoxDecoration(
          image: DecorationImage(
          image: AssetImage('assets/images/backgroundImg.jpg'),
          fit: BoxFit.cover,
          ),
          ),
            child: SafeArea(
             child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(),
            Container(
              decoration:  BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: Colors.pink[50]!,
                    width: 2,
                  ),
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: TextField(
                      onChanged: (value) {},
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 20,
                        ),
                        hintText: 'Write your message here...',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'send',
                      style: TextStyle(
                        color: Colors.pink[600],
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
          ));
  }
}
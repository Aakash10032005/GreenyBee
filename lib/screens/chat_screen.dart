import 'package:flutter/material.dart';
import 'package:greenybeenew/constants.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final List<String> questions = [
    "Hello, how are you?",
    "What are you up to today?",
    "What is your favorite color?",
    "What is your favorite food?",
    "What is your favorite movie?",
  ];

  final List<String> responses = [
    "I'm fine, thank you. How are you?",
    "I'm working on a new project.",
    "My favorite color is blue.",
    "My favorite food is pizza.",
    "My favorite movie is The Shawshank Redemption.",
  ];

  int currentQuestionIndex = 0;
  final List<String> messages = [];

  final TextEditingController _messageController = TextEditingController();

  @override
  void initState() {
    super.initState();
    messages.add(questions[currentQuestionIndex]); // Add the first question initially
  }

  void _sendMessage() {
    setState(() {
      messages.add(_messageController.text);
      _messageController.clear();

      // Show the next question if there are more
      if (currentQuestionIndex < questions.length - 1) {
        currentQuestionIndex++;
        messages.add(questions[currentQuestionIndex]);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: homescreenbackgroundcolour,
      appBar: AppBar(title: Text("Chat Page"), backgroundColor: homescreenbackgroundcolour,),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: messages.length,
              itemBuilder: (context, index) {
                final String message = messages[index];
                final bool isMe = index % 2 == 0; // Inverted logic for color

                return MessageBubble(
                  text: message,
                  isMe: isMe,
                );
              },
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _messageController,
                    decoration: InputDecoration(
                      hintText: 'Type your message...',
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: _sendMessage,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MessageBubble extends StatelessWidget {
  final String text;
  final bool isMe;

  const MessageBubble({required this.text, required this.isMe});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: isMe ? Colors.white : homescreenbackgroundcolour, // Inverted colors
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: isMe ? Colors.black : Colors.white, // Inverted colors
        ),
      ),
    );
  }
}
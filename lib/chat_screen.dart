import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _textController = TextEditingController();
  final List<ChatMessage> _messages = [];

  @override
  void initState() {
    super.initState();
    // Initial AI message
    _messages.add(
      ChatMessage(
        text: 'Hello, I am Quiz Sphere AI.\nHow Can I help you?',
        isUser: false,
        showBrainIcon: true,
      ),
    );
  }

  void _handleSubmitted(String text) {
    _textController.clear();
    setState(() {
      _messages.add(ChatMessage(text: text, isUser: true));
    });
    // Simulate AI response
    _simulateAiResponse(text);
  }

  void _simulateAiResponse(String userMessage) {
    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        if (userMessage.toLowerCase().contains(
          'quiz game about indian prime minister',
        )) {
          _messages.add(
            ChatMessage(
              text: 'Okay. I created the Quiz.\nClick to start Quiz.',
              isUser: false,
              showStartQuizButton: true,
            ),
          );
        } else {
          _messages.add(
            ChatMessage(
              text: 'I am still learning. Please try asking about a quiz.',
              isUser: false,
            ),
          );
        }
      });
    });
  }

  Widget _buildMessage(ChatMessage message) {
    return Align(
      alignment: message.isUser ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.only(bottom: 10),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          color: message.isUser ? const Color(0xFF34D399) : Colors.grey[200],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (message.showBrainIcon)
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(
                    Icons.psychology_outlined, // Placeholder icon
                    color: Color(0xFF34D399),
                    size: 24,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    message.text,
                    style: TextStyle(
                      fontSize: 16,
                      color: message.isUser ? Colors.white : Colors.black,
                    ),
                  ),
                ],
              )
            else
              Text(
                message.text,
                style: TextStyle(
                  fontSize: 16,
                  color: message.isUser ? Colors.white : Colors.black,
                ),
              ),
            if (message.showStartQuizButton)
              Container(
                margin: const EdgeInsets.only(top: 10),
                child: ElevatedButton(
                  onPressed: () {
                    // Handle start quiz
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF34D399), // Green button
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 15,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text(
                    'Start Quiz',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context); // Navigate back to the previous screen
          },
        ),
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Quiz Sphere ',
              style: TextStyle(
                fontFamily:
                    'Playfair Display', // Assuming a custom font based on image
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'AI',
              style: TextStyle(
                color: Color(0xFF34D399), // Green color for AI
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {
              // Handle more options
            },
          ),
        ],
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(16.0),
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                return _buildMessage(_messages[index]);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.image_outlined,
                    color: Color(0xFF34D399),
                  ),
                  onPressed: () {
                    // Handle image upload
                  },
                ),
                Expanded(
                  child: TextField(
                    controller: _textController,
                    onSubmitted: _handleSubmitted,
                    decoration: InputDecoration(
                      hintText: 'Just type your doubt !',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: Colors.grey[200],
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.mic_none, color: Colors.grey),
                  onPressed: () {
                    // Handle voice input
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.send, color: Color(0xFF34D399)),
                  onPressed: () => _handleSubmitted(_textController.text),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ChatMessage {
  final String text;
  final bool isUser;
  final bool showBrainIcon;
  final bool showStartQuizButton;

  ChatMessage({
    required this.text,
    required this.isUser,
    this.showBrainIcon = false,
    this.showStartQuizButton = false,
  });
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quiz_sphere/error_boundary.dart';
import 'dart:math';
import '../widgets/bottom_navbar.dart'; // Import the new widget

class ChatMessage {
  final String text;
  final bool isUser;

  ChatMessage({required this.text, required this.isUser});
}

class chatpagequiz extends StatefulWidget {
  const chatpagequiz({super.key});

  @override
  State<chatpagequiz> createState() => _chatpagequizState();
}

class _chatpagequizState extends State<chatpagequiz> {
  final TextEditingController _textController = TextEditingController();
  final List<ChatMessage> _messages = [];
  int _selectedIndex = 1; // Assuming Quiz is index 1 based on the image

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      // In a real app, you would navigate to different pages here
      // For now, we just update the selected index
    });
  }

  void _handleSubmitted(String text) {
    _textController.clear();
    setState(() {
      _messages.add(ChatMessage(text: text, isUser: true));
      // Simulate AI response
      _messages.add(ChatMessage(
          text: "This is a dummy AI response to: '$text'", isUser: false));
    });
  }

  Widget _buildTextComposer() {
    return IconTheme(
      data: IconThemeData(color: Theme.of(context).colorScheme.secondary),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: <Widget>[
            Flexible(
              child: TextField(
                controller: _textController,
                onSubmitted: _handleSubmitted,
                decoration: InputDecoration(
                  hintText: "Just type your doubt!",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Color.fromRGBO(243, 243, 243, 1.0),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 4.0),
              child: IconButton(
                icon: SvgPicture.asset(
                  "assets/images/vector_28.svg", // Assuming this is a send icon
                  height: 24,
                  width: 24,
                ),
                onPressed: () => _handleSubmitted(_textController.text),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildChatMessage(ChatMessage message) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        mainAxisAlignment:
            message.isUser ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: <Widget>[
          if (!message.isUser)
            Container(
              margin: const EdgeInsets.only(right: 8.0),
              child: SvgPicture.asset(
                "assets/images/group_10.svg", // AI avatar
                height: 40,
                width: 40,
              ),
            ),
          Flexible(
            child: Container(
              padding: EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                color: message.isUser
                    ? Color.fromRGBO(138, 243, 206, 1.0)
                    : Color.fromRGBO(243, 243, 243, 1.0),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(message.isUser ? 15.0 : 0.0),
                  topRight: Radius.circular(message.isUser ? 0.0 : 15.0),
                  bottomLeft: Radius.circular(15.0),
                  bottomRight: Radius.circular(15.0),
                ),
              ),
              child: Text(
                message.text,
                style: GoogleFonts.inter(
                  color: Color.fromRGBO(0, 0, 0, 1.0),
                  fontWeight: FontWeight.w500,
                  fontSize: 15.0,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              text: TextSpan(
                text: "Quiz Sphere",
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w400,
                  color: const Color.fromRGBO(0, 0, 0, 1.0),
                  fontSize: 27.0,
                  decoration: TextDecoration.none,
                ),
                children: [
                  TextSpan(
                    text: " AI",
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w400,
                      fontSize: 27.0,
                      color: const Color.fromRGBO(
                        71,
                        222,
                        165,
                        1.0,
                      ),
                      decoration: TextDecoration.none,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: ErrorBoundary(
        child: LayoutBuilder(
          builder: (BuildContext context, constraints) => Stack(
            children: [
              Column(
                children: <Widget>[
                  Flexible(
                    child: ListView.builder(
                      padding: const EdgeInsets.all(8.0),
                      reverse: false,
                      itemBuilder: (_, int index) =>
                          _buildChatMessage(_messages[index]),
                      itemCount: _messages.length,
                    ),
                  ),
                  const Divider(height: 1.0),
                  Container(
                    decoration:
                        BoxDecoration(color: Theme.of(context).cardColor),
                    child: _buildTextComposer(),
                  ),
                  SizedBox(
                      height: constraints.maxHeight *
                          0.07), // Space for the bottom navigation bar
                ],
              ),
              Positioned(
                bottom: 0.0,
                left: 0.0,
                right: 0.0,
                child: ErrorBoundary(
                  child: BottomNavBar(
                    selectedIndex: _selectedIndex,
                    onTap: _onItemTapped,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

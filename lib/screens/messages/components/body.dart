import 'package:chatappui/constants.dart';
import 'package:flutter/material.dart';
import 'chat_input_feild.dart';
import 'package:chatappui/models/ChatMessage.dart';
import 'package:chatappui/screens/messages/components/message.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kaDefaultPadding),
          child: ListView.builder(
            itemCount: dummyChatMessages.length,
            itemBuilder: (context, index) =>
                Message(message: dummyChatMessages[index]),
          ),
        )),
        chatInputField(),
      ],
    );
  }
}

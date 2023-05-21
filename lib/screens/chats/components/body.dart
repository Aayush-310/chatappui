import 'package:chatappui/components/filled_outline_button.dart';
import 'package:chatappui/constants.dart';
import 'package:chatappui/models/Chat.dart';
import 'package:chatappui/screens/messages/message_screen.dart';
import 'package:flutter/material.dart';
import 'chat_card.dart';

class ChatBody extends StatelessWidget {
  const ChatBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(
              kaDefaultPadding * 0.5,
              kaDefaultPadding / 4,
              kaDefaultPadding * 0.5,
              kaDefaultPadding / 4),
          color: kaPrimaryColor,
          child: Row(
            children: [
              Spacer(
                flex: 1,
              ),
              // FilledOutlineButton(
              //   text: "Recent",
              //   press: () {},
              // ),
              // const Spacer(
              //   flex: 1,
              // ),
              // const SizedBox(
              //   width: 10.0,
              // ),

              FilledOutlineButton(
                press: () {},
                text: "Active",
              ),
              // const SizedBox(
              //   width: 10.0,
              // ),
              Spacer(flex: 1),
              FilledOutlineButton(
                press: () {},
                text: "Rooms",
              ),
              const Spacer(
                flex: 1,
              )
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: chatData.length,
            itemBuilder: (context, index) => ChatCard(
              chat: chatData[index],
              press: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MessageScreen(),
                ),
              ),
              //for testing
              //   chat: Chat(
              //       name: "hari",
              //       lastMessage: "mari",
              //       image: "assets/images/user_2.png",
              //       time: "10th march",
              //       isActive: false),
              // ),
            ),
          ),
        ),
      ],
    );
  }
}

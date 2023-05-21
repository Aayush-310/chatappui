import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/ChatMessage.dart';

class AudioMessage extends StatelessWidget {
  final ChatMessages messages;

  const AudioMessage({super.key, required this.messages});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.55,
      padding: EdgeInsets.symmetric(
          horizontal: kaDefaultPadding * 0.75,
          vertical: kaDefaultPadding / 2.5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40.0),
          color: kaPrimaryColor.withOpacity(messages.isSender ? 1 : 0.1)),
      child: Row(
        children: [
          Icon(
            Icons.play_arrow,
            color: messages.isSender ? Colors.white : kaPrimaryColor,
          ),
          Expanded(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: kaDefaultPadding / 2),
              child: Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.center,
                children: [
                  Container(
                    width: double.infinity,
                    height: 2,
                    color: messages.isSender
                        ? Colors.white
                        : kaPrimaryColor.withOpacity(0.4),
                  ),
                  Positioned(
                    left: 0,
                    child: Container(
                      height: 8,
                      width: 8,
                      decoration: BoxDecoration(
                          color:
                              messages.isSender ? Colors.white : kaPrimaryColor,
                          shape: BoxShape.circle),
                    ),
                  )
                ],
              ),
            ),
          ),
          Text(
            "0.37",
            style: TextStyle(
                fontSize: 12, color: messages.isSender ? Colors.white : null),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/ChatMessage.dart';

import 'audio_mssages.dart';
import 'text_message.dart';
import 'package:chatappui/models/ChatMessage.dart';

import 'video_message.dart';

class Message extends StatelessWidget {
  const Message({
    Key? key,
    required this.message,
  }) : super(key: key);
  final ChatMessages message;

  @override
  Widget build(BuildContext context) {
    Widget messageContent(ChatMessages message) {
      switch (message.typeOfMessage) {
        case MessageType.text:
          return TextMessage(message: message);
          break;
        case MessageType.audio:
          return AudioMessage(
            messages: message,
          );
          break;
        case MessageType.video:
          return VideoMessage();
          break;
        default:
          return SizedBox();
      }
      ;
    }

    return Padding(
      padding: const EdgeInsets.only(top: kaDefaultPadding),
      child: Row(
        mainAxisAlignment:
            message.isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          if (message.isSender) ...[
            CircleAvatar(
              radius: 12,
              backgroundImage: AssetImage("assets/imagesa/user_2.png"),
            ),
            SizedBox(
              width: kaDefaultPadding / 2,
            )
          ],
          messageContent(message),
          if (message.isSender)
            MessageStatusCheck(
              status: message.messageStatus,
            )
        ],
      ),
    );
  }
}

class MessageStatusCheck extends StatelessWidget {
  const MessageStatusCheck({Key? key, required this.status}) : super(key: key);
  final Status status;
  @override
  Widget build(BuildContext context) {
    Color dotColor(Status status) {
      switch (status) {
        case Status.notSent:
          return kaErrorColor;
          break;
        case Status.notViewed:
          return Theme.of(context).textTheme.bodyText1!.color!.withOpacity(0.1);
          break;
        case Status.viewed:
          return kaPrimaryColor;
          break;
        default:
          return Colors.transparent;
      }
    }

    return Container(
      margin: EdgeInsets.only(left: kaDefaultPadding / 2),
      height: 12,
      width: 12,
      decoration:
          BoxDecoration(color: dotColor(status), shape: BoxShape.circle),
      child: Icon(
        status == Status.notSent ? Icons.close : Icons.done,
        size: 8,
        color: Theme.of(context).scaffoldBackgroundColor,
      ),
    );
  }
}

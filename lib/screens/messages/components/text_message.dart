import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/ChatMessage.dart';

class TextMessage extends StatelessWidget {
  const TextMessage({
    Key? key,
    required this.message,
  }) : super(key: key);
  final ChatMessages message;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: kaDefaultPadding * 0.75, vertical: kaDefaultPadding / 2),
      decoration: BoxDecoration(
          color: kaPrimaryColor.withOpacity(message.isSender ? 1 : 0.08),
          borderRadius: BorderRadius.circular(30.0)),
      child: Text(
        message.text,
        style: TextStyle(
            color: message.isSender
                ? Colors.white
                : Theme.of(context).textTheme.bodyText1?.color),
      ),
    );
  }
}

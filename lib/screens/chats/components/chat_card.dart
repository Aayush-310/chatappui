import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/Chat.dart';

class ChatCard extends StatelessWidget {
  const ChatCard({
    Key? key,
    required this.chat,
    required this.press,
  }) : super(key: key);
  final Chat chat;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: kaDefaultPadding, vertical: kaDefaultPadding * 0.75),
        child: Row(
          children: [
            Stack(children: [
              CircleAvatar(
                radius: 24.0,
                backgroundImage: AssetImage(chat.image),
              ),
              if (chat.isActive)
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: Container(
                    height: 16.0,
                    width: 16.0,
                    decoration: BoxDecoration(
                      color: kaPrimaryColor,
                      shape: BoxShape.circle,
                      border: Border.all(
                          color: Theme.of(context).scaffoldBackgroundColor,
                          width: 3),
                    ),
                  ),
                )
            ]),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: kaDefaultPadding,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      chat.name,
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    Opacity(
                      opacity: 0.64,
                      child: Text(
                        chat.lastMessage,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                            fontSize: 10.0, fontWeight: FontWeight.w200),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Opacity(
                opacity: 0.7,
                child: Text(
                  chat.time,
                  style: const TextStyle(
                    fontSize: 10,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

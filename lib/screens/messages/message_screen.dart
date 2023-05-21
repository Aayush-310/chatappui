import 'package:flutter/material.dart';
import 'package:chatappui/constants.dart';
import 'components/body.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: messageAppBar(),
      body: Body(),
    );
  }
}

AppBar messageAppBar() {
  return AppBar(
    //to consider the page so that back button does not appear
    automaticallyImplyLeading: false,
    title: Row(
      children: [
        //no custom on pressed callback
        const BackButton(),
        const CircleAvatar(
          backgroundImage: AssetImage("assets/images/user_2.png"),
        ),
        const SizedBox(
          width: kaDefaultPadding * 0.75,
        ),
        Column(
          children: <Widget>[
            Text(
              "User name",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 0.7,
            ),
            Opacity(
              opacity: 0.88,
              child: Text(
                "last active",
                style: TextStyle(fontSize: 12),
              ),
            )
          ],
        )
      ],
    ),
    //adding the call buttons in the app bar
    actions: [
      IconButton(
        onPressed: () {},
        icon: const Icon(Icons.local_phone),
      ),
      IconButton(
        onPressed: () {},
        icon: const Icon(Icons.videocam),
      ),
      SizedBox(
        width: kaDefaultPadding * 0.3,
      )
    ],
  );
}

import 'package:chatappui/constants.dart';
import 'package:flutter/material.dart';
import 'components/body.dart';

class Chatpage extends StatefulWidget {
  const Chatpage({Key? key}) : super(key: key);

  @override
  State<Chatpage> createState() => _ChatpageState();
}

class _ChatpageState extends State<Chatpage> {
  int _selectedIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: ChatBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: kaPrimaryColor,
        // ignore: sort_child_properties_last
        child: Icon(
          Icons.person_add_alt_1,
          color: Colors.white,
        ),
      ),
      bottomNavigationBar: buildBottomNavigationBar(),
    );
  }

  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: _selectedIndex,
      onTap: (value) {
        setState(() {
          _selectedIndex = value;
        });
      },
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.messenger,
            semanticLabel: "Chats",
          ),
          label: "Chats",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.people,
            semanticLabel: "People",
          ),
          label: "People",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.call,
            semanticLabel: "Calls",
          ),
          label: "Calls",
        )
      ],
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      //added
      backgroundColor: kaPrimaryColor,
      elevation: 0,
      title: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Row(
            // crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              //for going to the user settings
              CircleAvatar(
                backgroundImage: AssetImage("assets/images/user_2.pnh"),
                radius: 20.0,
                backgroundColor: Colors.white60,
              ),
              Spacer(
                flex: 2,
              ),
              SizedBox(
                width: 10.0,
              ),

              Text(
                "Chats",
              ),
              Spacer(
                flex: 2,
              ),
            ]),
      ),
      actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
    );
  }
}

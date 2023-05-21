import 'package:chatappui/constants.dart';
import 'package:flutter/material.dart';
import 'package:chatappui/components/primary_button.dart';
import 'package:chatappui/screens/chats/chats_screen.dart';

class Signup extends StatelessWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kaDefaultPadding),
          child: Column(
            children: [
              const Spacer(
                flex: 2,
              ),
              Image.asset(
                MediaQuery.of(context).platformBrightness == Brightness.light
                    ? "assets/images/Logo_light.png"
                    : "assets/images/Logo_dark.png",
                height: 146.0,
              ),
              const Spacer(),
              primaryButton(
                text: "Sign in ",
                press: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Chatpage(),
                  ),
                ),
              ),
              const SizedBox(
                height: kaDefaultPadding * 1.5,
              ),
              primaryButton(
                text: "Sign up  ",
                press: () {},
                colour: Theme.of(context).colorScheme.secondary,
              ),
              const Spacer(
                flex: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

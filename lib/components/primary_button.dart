import 'package:flutter/material.dart';
import 'package:chatappui/constants.dart';

class primaryButton extends StatelessWidget {
  const primaryButton(
      {Key? key,
      required this.text,
      required this.press,
      this.colour = kaPrimaryColor,
      this.paddingvalue = const EdgeInsets.all(kaDefaultPadding * 0.75)})
      : super(key: key);

  final String text;
  final VoidCallback press;
  final colour;
  final EdgeInsets paddingvalue;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(40), //kaDefaultPadding
        ),
      ),
      padding: paddingvalue,
      color: colour,
      minWidth: double.infinity,
      onPressed: press,
      child: Text(
        text,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}

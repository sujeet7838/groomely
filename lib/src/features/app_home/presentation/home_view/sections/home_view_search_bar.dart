import 'package:flutter/material.dart';

class HomeViewSearchBar extends StatelessWidget {
  const HomeViewSearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(
        left: 32.0,
        right: 32.0,
        top: 2.0,
        bottom: 24.0,
      ),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        cursorRadius: Radius.circular(0.8),
        style: TextStyle(
          fontSize: 20.0,
        ),
        decoration: InputDecoration(
          hintText: 'Search what you are looking for...',
        ),
      ),
    );
  }
}

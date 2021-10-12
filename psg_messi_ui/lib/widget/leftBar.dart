// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:psg_messi_ui/const/const.dart';

class LeftBar extends StatefulWidget {
  const LeftBar({Key? key}) : super(key: key);

  @override
  _LeftBarState createState() => _LeftBarState();
}

class _LeftBarState extends State<LeftBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: double.maxFinite,
      color: firstColor,
      child: const Center(
        child: Icon(
          Icons.menu,
          color: Colors.white,
        ),
      ),
    );
  }
}

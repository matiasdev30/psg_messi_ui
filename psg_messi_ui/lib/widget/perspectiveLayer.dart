// ignore_for_file: file_names

import 'package:flutter/material.dart';

class PerspectiveLayer extends StatelessWidget {
  final String imageSrc;
  final Offset offset;

  const PerspectiveLayer({
    Key? key,
    required this.imageSrc,
    required this.offset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: offset,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          image: DecorationImage(
            image: AssetImage(imageSrc),
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}

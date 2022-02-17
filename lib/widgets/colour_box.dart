import 'package:flutter/material.dart';

class ColourBox extends StatelessWidget {
  const ColourBox({
    Key? key,
    this.colour = Colors.black,
    this.isPressed = false,
    this.colourName = 'Black',
    this.hexName = 'ffffff',
  }) : super(key: key);

  final Color colour;
  final bool isPressed;
  final String colourName;
  final String hexName;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 120,
          width: 200,
          color: colour,
          child: const Positioned(
            child: Icon(
              Icons.favorite_border,
              color: Colors.white,
            ),
            top: 0.0,
            right: 0.0,
          ),
        ),
        SizedBox(
          height: 50,
          width: 200,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(('Title: ' + colourName)),
                Text(('Hex: ' + hexName)),
              ],
            ),
          ),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';

class ColourBox extends StatefulWidget {
  const ColourBox({
    Key? key,
    this.colour = Colors.black,
    this.colourName = 'Black',
    this.hexName = 'ffffff',
  }) : super(key: key);

  final Color colour;
  final String colourName;
  final String hexName;

  @override
  State<ColourBox> createState() => _ColourBoxState();
}

class _ColourBoxState extends State<ColourBox> {
  @override
  Widget build(BuildContext context) {
    bool isPressed = false;

    return Column(
      children: [
        Container(
          height: 120,
          width: 200,
          color: widget.colour,
          child: GestureDetector(
            onTap: () {
              setState(() {
                isPressed = !isPressed;
              });
            },
            child: Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  isPressed ? Icons.favorite : Icons.favorite_border,
                  color: Colors.white,
                ),
              ),
            ),
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
                Text(('Title: ' + widget.colourName)),
                Text(('Hex: ' + widget.hexName)),
              ],
            ),
          ),
        )
      ],
    );
  }
}

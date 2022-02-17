import 'package:androidchallenge/providers/results.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Search'),
      ),
      body: Consumer<ResultModel>(
        builder: (context, colours, child) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        child: TextField(
                          controller: textController,
                          decoration: const InputDecoration(
                            labelText: 'Image Search',
                          ),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      ),
                    ),
                    SizedBox(
                      width: 100,
                      height: 40,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            colours.getColourList(textController.text);
                          });
                        },
                        child: const Text('SEARCH'),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  children: <Widget>[
                    FlutterLogo(),
                    FlutterLogo(),
                    FlutterLogo(),
                    FlutterLogo(),
                  ],
                ),
              )
            ],
          );
        },
      ),
    );
  }
}

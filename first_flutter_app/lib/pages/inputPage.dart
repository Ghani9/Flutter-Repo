import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<InputPage> {
  TextEditingController inputController = TextEditingController();
  String inputData = "";
  void ShowInput() {
    setState(() {
      inputData = inputController.text;
      inputController.text = "";
    });

    print('Btn is Clicked');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Padding(
              padding: EdgeInsets.all(35.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(inputData),
                  TextField(
                    controller: inputController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter your name'),
                  ),
                  ElevatedButton(onPressed: ShowInput, child: Text('Click'))
                ],
              ))),
    );
  }
}

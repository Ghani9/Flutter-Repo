import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<InputPage> {
  TextEditingController inputController = TextEditingController();
  var inputsData = [];
  var msg = '';
  void ShowInput() {
    setState(() {
      inputsData.add(inputController.text);
      inputController.text = "";
    });
    msg = '';
    print('Btn is Clicked');
  }

  void DeleteItem() {
    print(inputsData.length);
    setState(() {
      if (inputsData.length > 0) {
        for (var input in inputsData) inputsData.remove(input);
      } else {
        msg = 'No item exist!';
      }
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
                  Text(msg),
                  TextField(
                    controller: inputController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter your name'),
                  ),
                  ElevatedButton(onPressed: ShowInput, child: Text('Click')),
                  Column(
                    children: [
                      for (var inputName in inputsData) Text(inputName),
                      ElevatedButton(
                          onPressed: DeleteItem, child: Text('Clear List'))
                    ],
                  )
                ],
              ))),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Custom buttons')),
        body: const Center(
          child: Column(
            children: [
              MyButton(),
              SizedBox(height: 10),
              MyButton(),
              SizedBox(height: 10),
              MyButton(),
              SizedBox(height: 10),
              MyButton(),
            ],
          ),
        ),
      ),
    ),
  );
}

class MyButton extends StatefulWidget {
  const MyButton({super.key});

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 260,
      height: 65,
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            selected = !selected;
          });
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: selected ? Colors.blue[500] : Colors.blue[50],
          foregroundColor: selected ? Colors.white : Colors.black,
        ),
        child: Text(selected ? 'Selected' : 'Not selected'),
      ),
    );
  }
}

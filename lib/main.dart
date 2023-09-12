import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String text = "Don`t push this button-> ";
  bool ChangeText = false;
  String btnText = "-_-";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Home"),
        ),
        body: Center(
          child: Row(
            children: [
              Text(text),
              ElevatedButton(
                onPressed: _ChangeText,
                child: ChangeText
                    ? SizedBox(
                        child: CircularProgressIndicator(
                          backgroundColor: Colors.cyanAccent,
                          valueColor:
                              new AlwaysStoppedAnimation<Color>(Colors.red),
                        ),
                        height: 20.0,
                        width: 20.0,
                      )
                    : Text(btnText),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _ChangeText() {
    ChangeText = true;
    setState(() {
      text = "Removing Windows O_o ";
    });
    Future.delayed(Duration(seconds: 3)).then((_) {
      setState(() {
        ChangeText = false;
      });
    });
  }
}

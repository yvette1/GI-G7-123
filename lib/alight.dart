import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          appBarTheme: AppBarTheme(color: const Color(0xFF595959),)),
      home: Scaffold(
          appBar: AppBar(title: const Text('To: Labrador Pk Stn',style: TextStyle(fontSize: 40),)),
          body: const Center(
            child: DialogExample(),
          ),backgroundColor: Colors.green
      ),
    );
  }
}

class DialogExample extends StatelessWidget {
  const DialogExample({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          backgroundColor: Colors.lightBlue,
          title: const Text('YOU HAVE ARRIVED!',style: TextStyle(fontSize: 30),),
            content: const Text('Have you alighted?',style: TextStyle(fontSize: 25),),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'NO'),
              child: const Text('NO',style: TextStyle(fontSize: 25, color: Colors.black),),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context, 'YES'),
              child: const Text('YES',style: TextStyle(fontSize: 25, color: Colors.black),),
            ),
          ],
        ),
      ),
      child: const Text(
        'YOU HAVE ARRIVED!',
        style: TextStyle(fontSize: 30, color: Colors.black),),
    );
  }
}

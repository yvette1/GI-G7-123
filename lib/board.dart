import 'package:flutter/material.dart';
import 'alight.dart';
import 'onboard.dart';

// void main() => runApp(const MyApp());
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//           appBarTheme: AppBarTheme(color: const Color(0xFF595959),)),
//       home: Scaffold(
//           appBar: AppBar(title: const Text('To: Labrador Pk Stn',style: TextStyle(fontSize: 40),)),
//           body: const Center(
//             child: DialogExample(),
//           ),backgroundColor: Colors.blue
//       ),
//     );
//   }
// }

class BoardPage extends StatelessWidget {
  const BoardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('To: Labrador Pk Stn',style: TextStyle(fontSize: 40),)),
      body:

      TextButton(
      onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('YOUR BUS IS HERE!',style: TextStyle(fontSize: 30),),
          content: const Text('Have you boarded?',style: TextStyle(fontSize: 25),),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Onboard()));},
              child: const Text('NO',style: TextStyle(fontSize: 25),),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Onboard()));},
              child: const Text('YES',style: TextStyle(fontSize: 25),),
            ),
          ],
        ),
      ),
      child: const Text(
        'YOUR BUS IS HERE!',
        style: TextStyle(fontSize: 30, color: Colors.black),),
    ),
        backgroundColor: Colors.blue

    );

  }
}
import 'package:flutter/material.dart';

import 'routes.dart';
import 'confirmation.dart';
import 'select_destination.dart';
import 'waiting.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // Widget to render a list of Plugins to demo.
  static List buses = ['10', '30', '61', '97', '100', '131', '143', '145','166'];
  final String busStop = 'Harbourfront Station';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            width: 10,
          ),
          Text(
            busStop,
            style: TextStyle(
                color: Colors.indigo[50],
                fontFamily:'Roboto'
            ),
          ),
        ],
      ),
        backgroundColor: Colors.blue[800], //<-- SEE HERE
      ),
      body: GridView.count(
        //style:
        // Create a grid with 2 columns. If you change the scrollDirection to
        // horizontal, this produces 2 rows.
        crossAxisCount: 2,
        // Generate 100 widgets that display their index in the List.
        children: List.generate(buses.length, (index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SelectDestPage()),
              );
            },
            child: Container(

              decoration: BoxDecoration(
                  color:Colors.indigo[50],
                  border: Border.all(color: Colors.blueAccent)
              ),
            child: Center(

             child:
                   Text(
                    buses[index],
                    style: TextStyle(
                      color: Colors.blue[800],
                      decorationStyle: TextDecorationStyle.wavy,
                      fontSize: 78,
                    ),

            ),

            ),

          ),
          );
        }),
      ),
    );
  }
}
class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Route'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate back to first route when tapped.
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}


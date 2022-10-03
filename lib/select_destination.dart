import 'package:flutter/material.dart';

import 'routes.dart';
import 'waiting.dart';

class SelectDestPage extends StatelessWidget {
  const SelectDestPage({super.key});
  static List places = ['Opp Harbourfront Stn','Carribean at Keppel Bay','Opp Chr Community Chapel','Telok Blangah Stn'];
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
            Container(
              margin: const EdgeInsets.only(right: 60.0),
              child:
                Text(
                  'SELECT DESTINATION',
                  style: TextStyle(
                      color: Colors.indigo[50],
                      fontFamily:'Roboto'
                  ),
                ),
      )
          ],
        ),
        backgroundColor: Colors.blue[800], //<-- SEE HERE
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: List.generate(places.length, (index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const WaitingPage()),
              );
            },
            child: Container(
              margin: const EdgeInsets.only(top: 20.0, bottom: 10.0),
              decoration: BoxDecoration(
                  color: Colors.blue[800],
                  borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
              child: Center(

                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                child: Text(
                  places[index],
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.indigo[50],

                    decorationStyle: TextDecorationStyle.wavy,
                    fontSize: 25,
                  ),

                ),
                ),

              ),

            ),
          );
        }),
      ),
        backgroundColor: Colors.indigo[50],
    );
  }
}
import 'package:flutter/material.dart';
import 'alight.dart';
class Onboard extends StatefulWidget {
  const Onboard({super.key});

  @override
  State<Onboard> createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> {
  @override
  Widget build(BuildContext context) {

      return Scaffold(
        backgroundColor: Colors.red[300],
        appBar: AppBar(title: const Text(
          'To: Labrador Pk Stn', style: TextStyle(fontSize: 40),)),
        body: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(70.0),
                child: Container(
                    height:200,
                    width:250,
                    color:Colors.grey,
                    child:Text(    "Next Stop: \n Carribean at Keppel Bay",style: TextStyle(color:Colors.white,fontSize: 40))
                ),
              ),
              SizedBox(
                height:30,
              ),
              Padding(
                padding: const EdgeInsets.all(70.0),
                child:
                    InkWell(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const AlightPage()),
                        );
                      },
                child:
                Container(

                    child:Text("Remaining \n       5 \nStops left",style: TextStyle(fontSize: 40))
                ),
    ),
              )
            ]
        ),
      );

  }
}
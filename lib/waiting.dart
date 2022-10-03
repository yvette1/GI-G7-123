import 'package:flutter/material.dart';

import 'routes.dart';
import 'board.dart';

class WaitingPage extends StatelessWidget {
  const WaitingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 160,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                width: 10,
              ),

              Container(
                width:200,
                margin: const EdgeInsets.only(right: 60.0),
                child:
                Text(
                  textAlign: TextAlign.center,
                  'Opp Harbourfront Stn',
                  style: TextStyle(
                      color: Colors.indigo[50],
                      fontFamily:'Roboto',
                      fontSize: 30,
                      overflow:TextOverflow.fade
                  ),
                  softWrap: true,
                ),
              )
            ],
          ),
          backgroundColor: Colors.red[300], //<-- SEE HERE
        ),
      body: Column(

        children: <Widget>[

          FittedBox(
            child:
              Container(
                height: 150,
                width: 180,
                margin: const EdgeInsets.only(top:20.0,left:70,right:50),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Colors.red,
              ),
                    child:
                        Center(
                        child:Text('100',
                        textAlign: TextAlign.center,

                        style: TextStyle(color:Colors.indigo[50],fontSize: 60)),
                        )
                      )
          ),

          FittedBox(
              child:
              InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const BoardPage()),
                  );
                },
                child:
              Container(

                  height: 200,
                  width: 250,
                  margin: const EdgeInsets.only(top:20,left:60,right:50),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.red,
                  ),
                  child:

                  Column(
                    children:<Widget>[
                     Container(
                       margin:const EdgeInsets.only(top:5),
                        child:
                          Text('ARRIVAL',
                              textAlign: TextAlign.center,
                              style: TextStyle(color:Colors.indigo[50],fontSize: 40)),),
                          Text('3 ',
                              textAlign: TextAlign.center,
                              style: TextStyle(color:Colors.indigo[50],fontSize: 80)),
                          Text('MINUTES ',
                              textAlign: TextAlign.center,
                              style: TextStyle(color:Colors.indigo[50],fontSize: 40)),
                    ]
                  )
              )
    )
          ),

        ],
      ),
        backgroundColor: Colors.red[100],
    );
  }
}
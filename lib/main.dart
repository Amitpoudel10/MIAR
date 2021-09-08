import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main()=> runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.green
      ),
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text("appbar"),
      ),
      body: Column(
mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
             Card(
              shadowColor: Colors.white,
              elevation: 10,
              child: Image.asset('assets/3.png',fit: BoxFit.cover,),
            ),
   Row(
crossAxisAlignment: CrossAxisAlignment.end,
     children: [
       Container(
        width: 410,
         child: RaisedButton(
           splashColor: Colors.orange,
           onPressed: (){
             ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
               backgroundColor: Colors.black,
               elevation: 10,
               content: Text('Yaa lets begin',style: TextStyle(
                 color: Colors.white
               ),),
             ));
           },
           child: Text("Get Started"),
         ),
       )
     ],
   )
        ],
      ),
    );
  }
}


import 'package:baithi/home.dart';
import 'package:baithi/setting.dart';
import 'package:flutter/material.dart';

import 'Login.dart';
class ThongB extends StatefulWidget {
  const ThongB({Key? key}) : super(key: key);

  @override
  _ThongBState createState() => _ThongBState();
}

class _ThongBState extends State<ThongB> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.home),
          onPressed: (){},
        ),
        actions:<Widget> [
          IconButton(
            icon: Icon(Icons.account_circle_sharp),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
            },
          ),
        ],

      ),
      body: Center(
        child: Text("Không có thông báo nào!",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
              }, icon: Icon(Icons.home),color: Colors.white,),
              IconButton(onPressed: (){
              }, icon: Icon(Icons.notifications),color: Colors.white),
              IconButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Profile()));
              }, icon: Icon(Icons.format_align_justify),color: Colors.white),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:baithi/setting.dart';
import 'package:baithi/thongbao.dart';
import 'package:flutter/material.dart';

import 'Login.dart';
import 'data.dart';
import 'info.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  int active = 0;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
        icon: Icon(Icons.home),
          onPressed: (){},
        ),
        actions:<Widget> [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: (){
            },
          ),

          IconButton(
          icon: Icon(Icons.account_circle_sharp),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
          },
          ),
        ],

      ),
      body: body1(),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.home),color: Colors.white,),
              IconButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => ThongB()));
              }, icon: Icon(Icons.notifications),color: Colors.white),
              IconButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Profile()));
              }, icon: Icon(Icons.menu),color: Colors.white),
            ],
          ),
        ),
      ),
    );

  }
  Widget body1(){
    return Container(
      child: ListView(
        children: <Widget>[
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.only(right: 20.0,left: 20),
          child: Row(
              children:
              List.generate(items.length, (index) {
                return Padding(
                  padding: const EdgeInsets.only(right:20.0),
                  child: InkWell(
                    onTap: (){
                      setState(() {
                        active = index;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border(bottom: BorderSide(color: Colors.black,width: 2))
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(items[index],style: TextStyle(fontSize: active == index?25:19,fontWeight: active == index?FontWeight.bold:FontWeight.normal),),
                      ),
                    ),
                  ),
                );
              })

          ),
        ),
      ),
          SizedBox(height: 30,),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => detail()));
            },
            child: Card(
              color: Colors.white,
              elevation: 2,
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Container(

                        decoration: BoxDecoration(
                          border: Border(bottom: BorderSide(color: Colors.black,width: 2)),
                          shape: BoxShape.circle,

                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text("1."+detai[0],style: TextStyle(color: Colors.black,fontSize: 19),),
                        Text("Quy trình phát triển PM",style: TextStyle(color: Colors.black,fontSize: 12),)

                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              print("ok");
            },
            child: Card(
              color: Colors.white,
              elevation: 2,
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Container(

                        decoration: BoxDecoration(
                          border: Border(bottom: BorderSide(color: Colors.black,width: 2)),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text("2."+detai[1],style: TextStyle(color: Colors.black,fontSize: 19),),
                        Text(items[1],style: TextStyle(color: Colors.black,fontSize: 12),)

                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              print("ok");
            },
            child: Card(
              color: Colors.white,
              elevation: 2,
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Container(

                        decoration: BoxDecoration(
                          border: Border(bottom: BorderSide(color: Colors.black,width: 2)),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text("3."+detai[2],style: TextStyle(color: Colors.black,fontSize: 19),),
                        Text(items[2],style: TextStyle(color: Colors.black,fontSize: 12),)

                      ],
                    )
                  ],
                ),
              ),
            ),
          )
    ],
      ),
    );
  }

}

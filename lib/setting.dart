import 'package:baithi/editprofile.dart';
import 'package:baithi/home.dart';
import 'package:baithi/thongbao.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            SizedBox(height: 40,),
            Row(
              children: [
                Icon(
                  Icons.person,
                  color: Colors.blue,
                ),
                SizedBox(width: 10,),
                Text("Account",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),)
              ],
            ),
            Divider(height: 20,thickness: 1,),
            SizedBox(height: 10,),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => EditProfile()));
              },
                child: buildAccount(context, "Chỉnh sửa thông tin")),
            buildAccount(context, "Chỉnh sửa tài khoản"),
            buildAccount(context, "Ngôn ngữ"),
            buildAccount(context, "Quyền riêng tư và bảo mật"),
            SizedBox(height: 40,),
            Center(
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  )
                ),
                onPressed: (){},
                child: Text("ĐĂNG XUẤT",style: TextStyle(
                  fontSize: 18,
                  letterSpacing: 2.2,
                  color: Colors.black
                ),),
              ),
            )

          ],
        ),
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
                Navigator.push(context, MaterialPageRoute(builder: (context) => ThongB()));
              }, icon: Icon(Icons.notifications),color: Colors.white),
              IconButton(onPressed: (){
              }, icon: Icon(Icons.menu),color: Colors.white),
            ],
          ),
        ),
      ),
    );
  }
  GestureDetector buildAccount(BuildContext context,String title){
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => EditProfile()));

      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.grey),),
            Icon(Icons.arrow_forward_ios,color: Colors.grey,),
          ],
        ),
      ),
    );
  }
}

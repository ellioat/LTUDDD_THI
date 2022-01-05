import 'package:baithi/home.dart';
import 'package:baithi/setting.dart';
import 'package:flutter/material.dart';
class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  _EditProfileState createState() => _EditProfileState();
}

List items = [
  "Đã chọn",
  "Android",
  "Quản trị CSDL",
  "Quy trình phát triển PM",
  "Đồ án tốt nghiệp",
  "Thực tập viết niên "
];
List<String> detai =[
  "Thiết kế hệ thống phòng trọ",
  "Thiết kế hệ thống vé máy bay",
  "Thiết kế hệ thống quản lý đề "
];

class _EditProfileState extends State<EditProfile> {
  @override
  bool isP=true;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Profile()));
          },
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 15,top: 20,right: 15),
        child: GestureDetector(
          onTap: (){
            FocusScope.of(context).unfocus();
          },
          child: ListView(
            children: [
              SizedBox(height: 30,),
              text("Full Name","Nguyễn Hữu Thành",false),
              text("MSSV","19T1021242",false),
              text("Ngày Sinh","26/05/2000",false),
              text("Email","19txxxx@example.com",false),
              text("Password","*******",true),
              text("Địa chỉ","8/61 Trần Nhân Tông,Tp Huế",false),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OutlineButton(
                      onPressed: (){},
                      child: Text("Cancel",style: TextStyle(
                      fontSize: 15,
                      letterSpacing: 2,
                      color: Colors.black
                  )),

                  ),
                  ElevatedButton(onPressed: (){},
                      child: Text("Save",style: TextStyle(
                        fontSize: 15,
                        letterSpacing: 2,
                        color: Colors.white
                      ),),
                  style:ElevatedButton.styleFrom(
                    primary: Colors.blue,
                      padding: EdgeInsets.symmetric(horizontal: 50),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                  )
                    ,)

                ],
              )
            ],
          ),
        ),
      ),
    );
  }
  Widget text(String label,String placeholder,bool isPasswordText){
    return Padding(
      padding: EdgeInsets.only(bottom: 30),
      child: TextField(
        obscureText: isPasswordText ? isP :false,
        decoration: InputDecoration(
          suffixIcon: isPasswordText ?
              IconButton(onPressed: (){}, icon: Icon(Icons.remove_red_eye,color: Colors.grey,),):null,
              contentPadding: EdgeInsets.only(bottom:5),
        labelText: label,
        hintText: placeholder,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
          color: Colors.grey,
        )
        ),
      ),
    );
  }
}

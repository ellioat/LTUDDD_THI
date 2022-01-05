import 'package:baithi/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'Register.dart';
class MyApp6 extends StatelessWidget {
  const MyApp6({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  var fKey = GlobalKey<FormState>();
  var txtUserName = TextEditingController();
  var txtPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
          },
        ),
      ),
        body: Container(

          child: Form(
            key: fKey,
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  SizedBox(height: 60,),
                  Text("SIGN IN", style: TextStyle(fontSize: 30, color:Colors.black)),
                  SizedBox(height: 30,),
                  TextFormField(
                    controller: txtUserName,
                    validator: (value){
                      if (value == null || value.isEmpty)
                        return "Username không được để trống";
                      else
                        return null;
                    },
                    decoration: InputDecoration(


                      hintText: "Enter your User Name",
                      labelText: "User Name",
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      enabledBorder:  OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintStyle: TextStyle(color: Colors.black),
                      labelStyle: TextStyle(color: Colors.black),
                      errorStyle: TextStyle(color: Colors.black),
                    ),
                  ),
                  SizedBox(height: 20,),
                  TextFormField(
                    controller: txtPassword,
                    validator: (value){
                      if (value == null || value.isEmpty)
                        return "Mật khẩu không được để trống";
                      else if (value.length < 6)
                        return "Độ dài mật khẩu không được ít hơn 6";
                      else
                        return null;
                    },
                    decoration: InputDecoration(
                      hintText: "Nhập mật khẩu",
                      labelText: "Password",
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      enabledBorder:  OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintStyle: TextStyle(color: Colors.black),
                      labelStyle: TextStyle(color: Colors.black),
                      errorStyle: TextStyle(color: Colors.black),
                    ),
                  ),
                  SizedBox(height: 20,),
                  ElevatedButton(
                      onPressed: (){
                        if (fKey.currentState!.validate()) {
                          print("OK!");
                          var userName = txtUserName.text;
                          var password = txtPassword.text;
                          var alert = AlertDialog(
                            content: Text("${userName}, ${password}"),
                          );
                          showDialog(context: context, builder: (context){
                            return alert;
                          });
                        } else
                          print("Not OK!");
                      },
                      child: Text("Login")
                  ),
                  SizedBox(height: 20,),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Register()));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Không có tài khoản"),
                        Text("Sign up",style: TextStyle(fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
    );
  }


}
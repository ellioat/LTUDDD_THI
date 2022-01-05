import 'package:flutter/material.dart';

import 'Login.dart';

class MyApp7 extends StatelessWidget {
  const MyApp7({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Register(),
    );
  }
}

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  var fKey = GlobalKey<FormState>();
  var txtUserName = TextEditingController();
  var txtPassword = TextEditingController();
  var txtRePassword = TextEditingController();
  var txtEmail = TextEditingController();
  var txtPhoneNumber = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
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
                  Text("Đăng ký ", style: TextStyle(fontSize: 30, color:Colors.black,)),
                  SizedBox(height: 20,),
                  TextFormField(
                    controller: txtUserName,
                    validator: (value){
                      if (value == null || value.isEmpty)
                        return "User Name cannot empty!";
                      else
                        return null;
                    },
                    decoration: InputDecoration(

                      hintText: "Điền username của bạn ",
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
                  SizedBox(height: 20),
                  TextFormField(
                    controller: txtPassword,
                    validator: (value){
                      if (value == null || value.isEmpty)
                        return "Mật khẩu không được để trống";
                      else if (value.length < 6)
                        return "Độ dài mật khẩu không được ít hơn 6 từ ";
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
                  SizedBox(height: 20),
                  TextFormField(
                    controller: txtRePassword,
                    validator: (value){
                      if (value == null || value.isEmpty)
                        return "Nhập lại mật khẩu không được để trống";
                      else if (value != txtPassword.text)
                        return "Nhập lại mật khẩu không trùng ";
                      else
                        return null;
                    },
                    decoration: InputDecoration(

                      hintText: "Nhập lại mật khẩu",
                      labelText: "Re-Password",
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
                  SizedBox(height: 20),
                  TextFormField(
                    controller: txtEmail,
                    validator: (value){
                      if (value == null || value.isEmpty)
                        return "Email không được ";
                      else if (RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value))
                        return null;
                      else
                        return "Email không đúng định dạng ";
                    },
                    decoration: InputDecoration(

                      hintText: "Nhập email ",
                      labelText: "Email",
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
                  SizedBox(height: 20),
                  TextFormField(
                    controller: txtPhoneNumber,
                    validator: (value){
                      if (value == null || value.isEmpty)
                        return "Số điện thoại không được để trống";
                      else if (value.length != 10)
                        return "Số điện thoại sai định dạng ";
                      else
                        return null;
                    },
                    decoration: InputDecoration(

                      hintText: "Nhập số điện thoại của bạn ",
                      labelText: "Phone Number",
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
                          var rePassword = txtRePassword.text;
                          var email = txtEmail.text;
                          var pNumber = txtPhoneNumber.text;
                        } else
                          print("Not OK!");
                      },
                      child: Text("Đăng kí ")
                  ),
                  SizedBox(height: 20,),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Đã có tài khoản "),
                        Text("Sign in",style: TextStyle(fontWeight: FontWeight.bold),),
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
import 'package:baithi/home.dart';
import 'package:flutter/material.dart';
class detail extends StatefulWidget {
  const detail({Key? key}) : super(key: key);

  @override
  _detailState createState() => _detailState();
}

class _detailState extends State<detail> {
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
      body:Container(
        padding: EdgeInsets.only(left: 15,top: 20,right: 15),
        child: ListView(
          children: [
            Text("Thiết kế hệ thống phòng trọ", style: TextStyle(fontSize: 45, color:Colors.black,fontWeight: FontWeight.bold)),
            Text("Môn : Quy Trình Phát triển phần mềm", style: TextStyle(fontSize: 30, color:Colors.black,)),
            Text("Mã lớp: TIN2033", style: TextStyle(fontSize: 30, color:Colors.black,)),
            Text("Giảng viên: Đặng Thanh Chương", style: TextStyle(fontSize: 30, color:Colors.black,)),
            Text("Tiến độ: 20/100", style: TextStyle(fontSize: 30, color:Colors.black,)),
            Text("Danh sách SV:", style: TextStyle(fontSize: 30, color:Colors.black,)),
            Table1(),
            Text("Tiến độ ", style: TextStyle(fontSize: 30, color:Colors.black,)),
            Duan(),

            ElevatedButton(onPressed: (){},
              child: Text("Nộp bài tuần  ",style: TextStyle(
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


        ),

      ),
      );

  }
  Widget Table1(){
    return  DataTable(
      columns: [
        DataColumn(label: Text(
            'MSSV',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
        )),
        DataColumn(label: Text(
            'Tên ',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
        )),
      ],
      rows: [
        DataRow(cells: [
          DataCell(Text('19t1021242')),
          DataCell(Text('Nguyễn Hữu Thành ')),

        ]),
        DataRow(cells: [
          DataCell(Text('19t1021243')),
          DataCell(Text('Lê Hữu Thành')),

        ]),
        DataRow(cells: [
          DataCell(Text('19t1021244')),
          DataCell(Text('Cao Văn Thành ')),

        ]),
        DataRow(cells: [
          DataCell(Text('19t1021245')),
          DataCell(Text('Trần Thanh Thanh')),

        ]),
      ],
    );

  }
  Widget Duan(){
    return  SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: DataTable(
        columns: [
          DataColumn(label: Text(
              'Tuần',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
          )),
          DataColumn(label: Text(
              'Bài tập',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
          )),
          DataColumn(label: Text(
              'Đã nộp?',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
          )),
        ],
        rows: [
          DataRow(cells: [
            DataCell(Text('1')),
            DataCell(Text('USE CASE TỔNG QUÁT ')),
            DataCell(Text('HOÀN THÀNH')),

          ]),
          DataRow(cells: [
            DataCell(Text('2')),
            DataCell(Text('SƠ ĐỒ TUẦN TỰ')),
            DataCell(Text('HOÀN THÀNH')),

          ]),
          DataRow(cells: [
            DataCell(Text('3')),
            DataCell(Text('SƠ ĐỒ HOẠT ĐỘNG')),
            DataCell(Text('CHƯA HOÀN THÀNH')),

          ]),
          DataRow(cells: [
            DataCell(Text('4')),
            DataCell(Text('USE CASE TỔNG QUÁT ')),
            DataCell(Text('CHƯA HOÀN THÀNH')),

          ]),
          DataRow(cells: [
            DataCell(Text('5')),
            DataCell(Text('USE CASE TỔNG QUÁT ')),
            DataCell(Text('CHƯA HOÀN THÀNH')),

          ]),




        ],
      ),
    );

  }
}

import 'dart:html';

import 'package:flutter/material.dart';
class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {

  @override
  Widget build(BuildContext context) {
  var numbersList = [
    ['1','2','3'],
    ['4','5','6'],
    ['7','8','9'],
  ];
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.lock_outline,
                    size: 100.0,
                    color: Colors.blueGrey,
                  ),
                  Text(
                      "กรุณาใส่รหัสผ่าน",
                    style: TextStyle(
                      fontSize: 25
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for(var i = 0 ; i < numbersList.length ; i++ )
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _buildNumberRow(numbersList[i]),
                      ],
                    ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _emptyButton(),
                      _buildNumberRow(['0']),
                      _iconButton(),
                    ],
                  ),

                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      child: TextButton(
                          onPressed: (){

                          },
                          child: Text(
                            "ลืมรหัสผ่าน",
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                          )
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      )
    );
  }
}

Widget _buildNumberRow(List<String> numbersList){
  return Row(
    children: numbersList.map((item) {
      return _buildNumberButton(item);
    }).toList(),
  );
}

Padding _buildNumberButton(String n){
  return Padding(
        padding: const EdgeInsets.all(4.0),
        child: Container(
          width: 70.0,
          height: 70.0,
          //color: Colors.white, // ห้ามกำหนด color ตรงนี้ ถ้าหากกำหนดใน BoxDecoration แล้ว
          decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              border: Border.all(color: Colors.black, width: 1.0),
          ),
          child: Align(
            alignment: Alignment.center,
            child: Text(n,style: TextStyle(fontSize: 22,color: Colors.black),),
          ),
        ),
      );
}

Padding _emptyButton(){
  return Padding(
    padding: const EdgeInsets.all(4.0),
    child: Container(
      width: 70.0,
      height: 70.0,
      //color: Colors.white, // ห้ามกำหนด color ตรงนี้ ถ้าหากกำหนดใน BoxDecoration แล้ว

    ),
  );
}

Padding _iconButton() {
  return Padding(
    padding: const EdgeInsets.all(4.0),
    child: SizedBox(
      width: 70.0,
      height: 70.0,
      child: Icon(
        Icons.backspace_outlined,
        color: Colors.grey,
      ),

    ),
  );
}


import 'package:flutter/material.dart';

import 'colors.dart';
class calcul extends StatefulWidget {
  const calcul({super.key});

  @override
  State<calcul> createState() => _calculState();
}

class _calculState extends State<calcul> {
  String num1="";
  String num2="";
  String oper="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar:AppBar(
       backgroundColor: d,
         title: Center(child: Text('CALCULATOR',style: TextStyle(
           color: h,fontWeight: FontWeight.bold
         ),)),
       ) ,
      body: Container(
        child: Column(
          children: [
            Expanded(child:
            Container(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Text('0',style: TextStyle(
                  fontWeight: FontWeight.w400,fontSize: 60,
                ),),
              ),
            )),
            Row(
              children: [
                customOutlinedButton("9"),
                customOutlinedButton("8"),
                customOutlinedButton("7"),
                customOutlinedButton("+"),
              ],
            ),
            Row(
              children: [
                customOutlinedButton("6"),
                customOutlinedButton("5"),
                customOutlinedButton("4"),
                customOutlinedButton("-"),
              ],
            ),
            Row(
              children: [
                customOutlinedButton("3"),
                customOutlinedButton("2"),
                customOutlinedButton("1"),
                customOutlinedButton("x"),
              ],
            ),
            Row(
              children: [
                customOutlinedButton("c"),
                customOutlinedButton("0"),
                customOutlinedButton("="),
                customOutlinedButton("/"),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget customOutlinedButton(String val) {
    return
      Expanded(
        child: OutlinedButton(
                         onPressed: () =>buttonclicked(val),

          child: Center(child:
                   Text(
                     val,
                     style: TextStyle(color: e,fontSize: 50),)),style: OutlinedButton.styleFrom(
                    minimumSize: Size(110, 110),side: BorderSide(width: 5)
                  ),
                  ),
      );
  }

 void buttonclicked(String buttomText) {
   if (buttomText=="c");
   {

   }
 }
}

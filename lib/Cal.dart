import 'dart:math';

import 'package:flutter/material.dart';

import 'colors.dart';
class ca extends StatefulWidget {

  const ca({super.key});

  @override
  State<ca> createState() => _caState();
}

class _caState extends State<ca> {
  TextEditingController myController = TextEditingController();
  String num1="";
  String num2="";
  String oper="";
bool click=false;
void clearText()
{
  myController.clear();
}

OppClick(String val){
  myController.text=val;
  oper=val;
  click=true;
}

NumClick(String val)
{
  if(click)
  {
    num2+=val;
    myController.text=num2;
  }
  else
  {
    num1+=val;
    myController.text=num1;
  }
}
  var size,height,width;
  @override
  Widget build(BuildContext context) {
    return SafeArea(

      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body:
        Container(

          child: Column(
            children: [
              SizedBox(height: size = MediaQuery.of(context).size.height*0.10,),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  decoration:InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide(),
                          borderRadius: BorderRadius.circular(10),

                      ),
                    filled: true,
                    //fillColor: Theme.of(context).colorScheme.primary,
                    focusedBorder: OutlineInputBorder(borderSide: BorderSide()),
                    enabledBorder:  OutlineInputBorder(borderSide: BorderSide(color: Theme.of(context).colorScheme.primary))
                  ) ,
                  textAlign: TextAlign.end,
                  controller: myController,
                ),
              ),
              SizedBox(height:  size = MediaQuery.of(context).size.height*0.10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed:(){
                    num1="";
                    num2="";
                   myController.text="";

                  }
                  ,child: Text(
                    "c",style: TextStyle(
                        fontSize: 50),
                  ),
                    style: ElevatedButton.styleFrom(minimumSize: Size(80, 80),
                       // backgroundColor:Theme.of(context).colorScheme.secondary,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))
                    ),
                  ),
                  ElevatedButton(onPressed: (){
                    setState(() {
                      OppClick("/");
                    });
                  }, child: Text(
                    "/",style: TextStyle(fontSize: 40),
                  ),
                    style: ElevatedButton.styleFrom(minimumSize: Size(80, 80),
                      //  backgroundColor: Theme.of(context).colorScheme.secondary,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40))
                    ),
                  ),
                  ElevatedButton(onPressed: (){
                    setState(() {
                      OppClick("%");
                    });
                  }, child: Text(
                    "%",style: TextStyle(fontSize: 40),
                  ),
                    style: ElevatedButton.styleFrom(minimumSize: Size(80, 80),
                        //backgroundColor:Theme.of(context).colorScheme.secondary,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(35))
                    ),
                  ),
                  ElevatedButton(onPressed: (){
                    setState(() {
                      OppClick("^");
                    });
                  }, child: Text(
                    "^",style: TextStyle(fontSize: 50),
                  ),
                    style: ElevatedButton.styleFrom(minimumSize: Size(80, 80),
                       // backgroundColor: Theme.of(context).colorScheme.secondary,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40))
                    ),
                  ),
                  ElevatedButton(onPressed: (){
                    setState(() {
                     OppClick("√");
                    });
                  }, child: Text(
                    "√",style: TextStyle(fontSize: 40),
                  ),
                    style: ElevatedButton.styleFrom(minimumSize: Size(80, 80),
                        //backgroundColor: Theme.of(context).colorScheme.secondary,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))
                    ),
                  ),
                ],
              ),
              SizedBox(height: size = MediaQuery.of(context).size.height*0.01,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: (){
                    setState(() {
                   NumClick("7");

                    });

                  }, child: Text(
                    "7",style: TextStyle(fontSize: 50),
                  ),
                    style: ElevatedButton.styleFrom(minimumSize: Size(80, 80),
                        //backgroundColor: Theme.of(context).colorScheme.secondary,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))
                    ),
                  ),
                  ElevatedButton(onPressed: (){
                    setState(() {
                     NumClick("8");
                    });

                  }, child: Text("8",style: TextStyle(fontSize: 50),
                  ),
                    style: ElevatedButton.styleFrom(minimumSize: Size(80, 80),
                        //backgroundColor: Theme.of(context).colorScheme.secondary,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))
                    ),
                  ),
                  ElevatedButton(onPressed: (){
                    setState(() {
                      NumClick("9");
                    });
                  }, child: Text("9",style: TextStyle(fontSize: 50),
                  ),
                    style: ElevatedButton.styleFrom(minimumSize: Size(80, 80),
                        //backgroundColor: Theme.of(context).colorScheme.secondary,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))
                    ),
                  ),
                  ElevatedButton(onPressed: (){
                    setState(() {
                      OppClick("*");
                    });
                  }, child: Text("*",style: TextStyle(fontSize: 50),
                  ),
                    style: ElevatedButton.styleFrom(minimumSize: Size(80, 80),
                      //  backgroundColor:Theme.of(context).colorScheme.secondary,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))
                    ),
                  ),
                ],
              ),
              SizedBox(height: size = MediaQuery.of(context).size.height*0.01,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: (){
                    setState(() {
                      NumClick("4");
                    });
                  }, child: Text("4",style: TextStyle(fontSize: 50),
                  ),
                    style: ElevatedButton.styleFrom(minimumSize: Size(80, 80),
                        //backgroundColor: Theme.of(context).colorScheme.secondary,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))
                    ),
                  ),
                  ElevatedButton(onPressed: (){
                    setState(() {
                      NumClick("5");
                    });

                  }, child: Text(
                    "5",style: TextStyle(fontSize: 50),
                  ),
                    style: ElevatedButton.styleFrom(minimumSize: Size(80, 80),
                       // backgroundColor: Theme.of(context).colorScheme.secondary,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))
                    ),
                  ),
                  ElevatedButton(onPressed: (){
                    setState(() {
                      NumClick("6");
                    });
                  }, child: Text(
                    "6",style: TextStyle(fontSize: 50),
                  ),
                    style: ElevatedButton.styleFrom(minimumSize: Size(80, 80),
                       // backgroundColor:Theme.of(context).colorScheme.secondary,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))
                    ),
                  ),
                  ElevatedButton(onPressed: (){
                    setState(() {

                      OppClick("-");
                    });
                  }, child: Text("-",style: TextStyle(fontSize: 50),
                  ),
                    style: ElevatedButton.styleFrom(minimumSize: Size(80, 80),
                       // backgroundColor: Theme.of(context).colorScheme.secondary,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))
                    ),
                  ),
                ],
              ),
              SizedBox(height: size = MediaQuery.of(context).size.height*0.01,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: (){
                    setState(() {

                      NumClick("1");
                    });

                  }, child: Text(
                    "1",style: TextStyle(fontSize: 50),
                  ),
                    style: ElevatedButton.styleFrom(minimumSize: Size(80, 80),
                       // backgroundColor: Theme.of(context).colorScheme.secondary,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))
                    ),
                  ),
                  ElevatedButton(onPressed: (){
                    NumClick("2");
                  }, child: Text(
                    "2",style: TextStyle(fontSize: 50),
                  ),
                    style: ElevatedButton.styleFrom(minimumSize: Size(80, 80),
                      //  backgroundColor: Theme.of(context).colorScheme.secondary,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))
                    ),
                  ),
                  ElevatedButton(onPressed: (){
                    NumClick("3");
                  }, child: Text(
                    "3",style: TextStyle(fontSize: 50),
                  ),
                    style: ElevatedButton.styleFrom(minimumSize: Size(80, 80),
                       // backgroundColor: Theme.of(context).colorScheme.secondary,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))
                    ),
                  ),
                  ElevatedButton(onPressed: (){
                    setState(() {
                      OppClick('+');
                    });
                  }, child: Text(
                    "+",style: TextStyle(fontSize: 50),
                  ),
                    style: ElevatedButton.styleFrom(minimumSize: Size(80, 80),
                       // backgroundColor: Theme.of(context).colorScheme.secondary,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))
                    ),
                  ),
                ],
              ),
              SizedBox(height: size = MediaQuery.of(context).size.height*0.01,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: (){
                    setState(() {
                      NumClick("0");
                    });
                  }, child: Text(
                      "0",style: TextStyle(fontSize: 50),
                  ),
                    style: ElevatedButton.styleFrom(minimumSize: Size(80, 80),
                       // backgroundColor: Theme.of(context).colorScheme.secondary,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))
                    ),
                  ),
                  ElevatedButton(onPressed: (){
                    setState(() {
                      NumClick(".");
                    });
                  }, child: Text(
                      ".",style: TextStyle(fontSize: 50),
                  ),
                    style: ElevatedButton.styleFrom(minimumSize: Size(80, 80),
                       // backgroundColor: Theme.of(context).colorScheme.secondary,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))
                    ),
                  ),
                  ElevatedButton(onPressed: (){
                    setState(() {
                      myController.text=myController.text.substring(0,myController.text.length-1);
                    });
                  }, child: Text(
                    "dl",style: TextStyle(fontSize: 40),
                  ),
                    style: ElevatedButton.styleFrom(minimumSize: Size(80, 80),
                        //backgroundColor:Theme.of(context).colorScheme.secondary,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40))
                    ),
                  ),
                  ElevatedButton(onPressed: (){
                    setState(() {
                      double a = double.parse(num1);
                      double b = double.parse(num2);
                      double res = 0;
                      if(oper=="+")
                        {
                           res=a+b;
                          myController.text=res.toString();
                        }
                      if(oper=="-")
                      {
                         res=a-b;
                        myController.text=res.toString();
                      }
                      if(oper=="*")
                      {
                         res=a*b;
                        myController.text=res.toString();
                      }
                      if(oper=="/")
                      {
                         res=a/b;

                      }
                      if(oper=="%")
                      {

                         res=a*b/100;
                        myController.text=res.toString();
                      }
                      if(oper=="√")
                      {
                        double a = double.parse(num2);
                         res= sqrt (a);
                        myController.text=res.toString();
                      }
                      if(oper=="^")
                      {
                        double a = double.parse(num1);
                        double b = double.parse(num2);
                        num res1=pow(a,b);
                        myController.text=res1.toString();
                      }
                    });
                  }, child: Text(
                      "=",style: TextStyle(fontSize: 50,),
                  ),
                    style: ElevatedButton.styleFrom(minimumSize: Size(80, 80),
                        //backgroundColor: Theme.of(context).colorScheme.secondary,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))
                    ),
                  ),
                ],
              ),
            ],
          ),
        ) ,
      ),
    );
  }
}

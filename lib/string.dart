import 'dart:html';
import 'dart:js_util';

import 'package:flutter/material.dart';
class dartstr extends StatefulWidget {
  const dartstr({super.key});

  @override
  State<dartstr> createState() => _dartstrState();
}

class _dartstrState extends State<dartstr> {
  TextEditingController string=TextEditingController();
  String str='';
  List lis=[];



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Card(child: Text('STRING')),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                keyboardType: TextInputType.number,
                controller: string,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.cyanAccent, width: 5),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.cyanAccent, width: 5),
                  ),
                ),
              ),
            ),
            SizedBox(height: 5,),
            ElevatedButton(onPressed: (){
             setState(() {
               str=string.text;
               lis.add(str);
               string.text='';
             });

            }, child:Text('ok',style: TextStyle(fontSize: 25),),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.greenAccent,
              minimumSize: Size(80, 50)
            ),
            ),
            SizedBox(height: 5,),
            Container(
              height: MediaQuery.of(context).size.height*0.35,
              width: MediaQuery.of(context).size.width*0.88,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.only(topRight: Radius.circular(35),bottomLeft:Radius.circular(35) )
              ),
              child: ListView.builder (
                itemCount: lis.length,
                  itemBuilder: (BuildContext context,index){
                    return Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(lis[index].toString(),style: TextStyle(fontSize: 25),),
                    );
                  }
              ),
            ),
               SizedBox(height: 5,),
            Row(
              children: [
                ElevatedButton(onPressed: (){

                  setState(() {
                    showModalBottomSheet(context: context,
                        builder:(BuildContext context){
                          return Container(
                              height: 300,
                              width: 400,
                              color: Colors.lightGreenAccent,
                              child: Column(
                                children: [
                                  Text('TO LOWER CASE: ${lis}',style: TextStyle(fontSize: 30),),
                                  SizedBox(height: 20,),
                                  TextButton(onPressed:(){
                                    Navigator.of(context).pop(context);
                                  },
                                      child: Text( 'OK',style: TextStyle(fontSize: 40,color: Colors.cyanAccent)))
                                ],
                              )
                          );
                        }
                    );
                    lis=lis.map((e) =>e.toString().toLowerCase() ).toList();
                  });

                }, child:Text('lower case',style: TextStyle(fontSize: 25),),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.greenAccent,
                      minimumSize: Size(80, 50)
                  ),
                ),
                ElevatedButton(onPressed: (){

                  setState(() {
                    showModalBottomSheet(context: context,
                        builder:(BuildContext context){
                          return Container(
                              height: 300,
                              width: 400,
                              color: Colors.lightGreenAccent,
                              child: Column(
                                children: [
                                  Text('TO LOWER CASE: ${lis}',style: TextStyle(fontSize: 30),),
                                  SizedBox(height: 20,),
                                  TextButton(onPressed:(){
                                    Navigator.of(context).pop(context);
                                  },
                                      child: Text( 'OK',style: TextStyle(fontSize: 40,color: Colors.cyanAccent)))
                                ],
                              )
                          );
                        }
                    );
                    lis=lis.map((e) =>e.toString().toUpperCase() ).toList();
                  });

                }, child:Text('upper case',style: TextStyle(fontSize: 25),),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.greenAccent,
                      minimumSize: Size(80, 50)
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

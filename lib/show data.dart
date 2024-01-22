import 'package:flutter/material.dart';

import 'colors.dart';

class Data extends StatefulWidget {
  const Data({Key? key});

  @override
  State<Data> createState() => _DataState();
}

class _DataState extends State<Data> {
  final ctrl = TextEditingController();
  String add = "";
  List <String>list = [];
  final _formKey = GlobalKey<FormState>();

  //get filtered1 => null;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: m,
        ),
        body: Column(
          children: [
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                keyboardType: TextInputType.number,
                controller: ctrl,
                // validator: (value) {
                //   if (value.isEmpty) {
                //     return 'Please enter a number';
                //   }
                //   double parsedValue = double.tryParse(value);
                //   if (parsedValue == null || parsedValue >= 5) {
                //     return 'Please enter a number less than 5';
                //   }
                //   return null;
                // },
      
      
      
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
            ElevatedButton(
              onPressed: () {
                setState(() {
      
                  // if(int.parse(ctrl.text<5)){
                  //  add=ctrl.text;
                  //  list.add(add);
                  //  ctrl.text="";
                  // }
                  add = ctrl.text;
                  list.add(add);
      
                  ctrl.text ="";
      
                });
              },
              child: Text('ok',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(backgroundColor: h,
                minimumSize: Size(100, 70),
              ),
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      list.sort();
                      list.sort((a, b) => int.parse(a).compareTo(int.parse(b)));
                    });
                  },
                  child: Text('asend',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(backgroundColor: h,
                    minimumSize: Size(100, 70),
                  ),
                ),
                SizedBox(width: 20,),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      list.sort();
                      list.sort((a, b) => int.parse(b).compareTo(int.parse(a)));
                    });
                  },
                  child: Text('descend',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(backgroundColor: h,
                    minimumSize: Size(100, 70),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Container(
              height: 300,
              width: 370,
              decoration: BoxDecoration(
                color: i,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.cyanAccent, width: 5),
              ),
              child:
              ListView.builder(
                itemCount: list.length,
                itemBuilder: (BuildContext context, index) {
                  return Text(list[index].toString(),style: TextStyle(fontSize: 30),);
                },
              ),
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    showDialog(context: context,
                      builder:(context)=>AlertDialog(
                        actions: [
                          TextButton(onPressed: (){
                          Navigator.of(context).pop(context);
                        },
                              child:Text(' OK',style: TextStyle(fontSize: 40,color: Colors.cyanAccent)))
                        ],
                        title: Text('LARGE: ${list.last}',style: TextStyle(fontSize: 40),),
                      ),
                    );
                    setState(() {
                      list.sort();
                      list.sort((a, b) => int.parse(a).compareTo(int.parse(b)));
                    });
                  },
                  child: Text('large',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(backgroundColor: h,
                    minimumSize: Size(100, 70),),
                ),
                ElevatedButton(
                  onPressed: () {
                    showModalBottomSheet(context: context,
                        builder:(BuildContext context){
                          return Container(
                              height: 300,
                              width: 400,
                            color: Colors.lightGreenAccent,
                              child: Column(
                                children: [
                                  Text('SMALL: ${list.first}',style: TextStyle(fontSize: 30),),
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
                    setState(() {
                      list.sort();
                      list.sort((a, b) =>int.parse(a).compareTo(int.parse(b)));
                    });
                  },
                  child: Text('min',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(backgroundColor: h,
                    minimumSize: Size(100, 70),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      var filtered1 = list.where((e) => double.parse(e) < 5).toList();
                      var b = filtered1.toString();
                    showModalBottomSheet(context: context,
                        builder:(BuildContext context){
                          return Container(
                              height: 300,
                              width: 400,
                              
                              decoration: BoxDecoration( color: Colors.red.shade200,borderRadius: BorderRadius.circular(20)),
                              child: Column(
                                children: [
                                  Text('LESS THEN 5: ${b}',style: TextStyle(fontSize: 30),),
                                  SizedBox(height: 20,),
                                  TextButton(onPressed:(){
                                    Navigator.of(context).pop(context);
                                  },
                                      child: Text( 'OK',style: TextStyle(fontSize: 40,color: Colors.cyanAccent)))
                                ],
                              )
                          );
                          });
                        }
                    );
                  },
                  child: Text('LESS 5',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(backgroundColor: h,
                    minimumSize: Size(100, 70),
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

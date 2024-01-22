import 'package:flutter/material.dart';

import 'colors.dart';
class dart extends StatefulWidget {
  const dart({super.key});

  @override
  State<dart> createState() => _dartState();
}

class _dartState extends State<dart> {
  TextEditingController text =TextEditingController();
  List list=[];
  String str="";


  bool isPrime(dynamic n) {
    if (n is String) {
      try {
        n = int.parse(n);
      } catch (e) {
        // Handle the case where parsing fails, for example, if the input is not a valid integer.
        return false;
      }
    }

    if (n <= 1) return false;

    for (int i = 2; i <= n ~/ 2; i++) {
      if (n % i == 0) {
        return false;
      }
    }
    return true;
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      
        appBar: AppBar(
          title: Text('DART'),
        ),
        body: Column(
          children: [  SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                keyboardType: TextInputType.number,
                controller: text,
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
      
      
                  str = text.text;
                  list.add(str);
      
                  text.text ="";
      
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
                      var filtered1 = list.where((e) => double.parse(e) > 10).toList();
                      var b = filtered1.toString();
                      showModalBottomSheet(context: context,
                          builder:(BuildContext context){
                            return Container(
                                height: 300,
                                width: 400,
      
                                decoration: BoxDecoration( color: Colors.red.shade200,borderRadius: BorderRadius.circular(20)),
                                child: Column(
                                  children: [
                                    Text('GREATER THEN 10: ${b}',style: TextStyle(fontSize: 30),),
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
                  child: Text('> 10',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(backgroundColor: h,
                    minimumSize: Size(100, 70),
                  ),
                ),
              ],
            ),
            SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      var evenNumbers = list.where((e) => int.parse(e) % 2 == 0).toList();
                      showModalBottomSheet(
                        context: context,
                        builder: (BuildContext context) {
                          return Container(
                            height: 300,
                            width: 400,
                            decoration: BoxDecoration(
                              color: Colors.blue.shade200,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              children: [
                                Text('EVEN NUMBERS: ${evenNumbers.join(', ')}', style: TextStyle(fontSize: 30),),
                                SizedBox(height: 20,),
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop(context);
                                  },
                                  child: Text('OK', style: TextStyle(fontSize: 40, color: Colors.cyanAccent)),
                                )
                              ],
                            ),
                          );
                        },
                      );
                    });
                  },
                  child: Text('even',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: h,
                    minimumSize: Size(100, 70),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      var oddNumbers = list.where((e) => int.parse(e) % 2 != 0).toList();
                      showModalBottomSheet(
                        context: context,
                        builder: (BuildContext context) {
                          return Container(
                            height: 300,
                            width: 400,
                            decoration: BoxDecoration(
                              color: Colors.orange.shade200,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              children: [
                                Text('ODD NUMBERS: ${oddNumbers.join(', ')}', style: TextStyle(fontSize: 30),),
                                SizedBox(height: 20,),
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop(context);
                                  },
                                  child: Text('OK', style: TextStyle(fontSize: 40, color: Colors.cyanAccent)),
                                )
                              ],
                            ),
                          );
                        },
                      );
                    });
                  },
                  child: Text('odd',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: h,
                    minimumSize: Size(100, 70),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                  var prime=  list.where((element) => isPrime(element)).toList();
                     showModalBottomSheet(context: context,
                         builder:(BuildContext){
                           return Container(
                             height: 300,
                             width: 400,
                             decoration: BoxDecoration(
                               color: Colors.orange.shade200,
                               borderRadius: BorderRadius.circular(20),
                             ),
                             child: Column(
                               children: [
                                 Text('PRIME: ${prime.join(', ')}', style: TextStyle(fontSize: 30),),
                                 SizedBox(height: 20,),
                                 TextButton(
                                   onPressed: () {
                                     Navigator.of(context).pop(context);
                                   },
                                   child: Text('OK', style: TextStyle(fontSize: 40, color: Colors.cyanAccent)),
                                 )
                               ],
                             ),
                           );
                         },
                     );
                    });
                  },
                  child: Text('prime',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: h,
                    minimumSize: Size(100, 70),
                  ),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  var num=list;
                  int sum=0;
                  for(int number in num ){
                   // sum+=num;
                  }
                  showModalBottomSheet(context: context,
                    builder:(BuildContext){
                      return Container(
                        height: 300,
                        width: 400,
                        decoration: BoxDecoration(
                          color: Colors.orange.shade200,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            Text('sum: ', style: TextStyle(fontSize: 30),),
                            SizedBox(height: 20,),
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop(context);
                              },
                              child: Text('OK', style: TextStyle(fontSize: 40, color: Colors.cyanAccent)),
                            )
                          ],
                        ),
                      );
                    },
                  );
                });
              },
              child: Text('sum',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: h,
                minimumSize: Size(100, 70),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

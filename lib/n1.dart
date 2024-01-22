import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:text/bio%20class.dart';
import 'package:text/n2.dart';

import 'n3.dart';



class nex1 extends StatefulWidget {
  const nex1({Key? key}) : super(key: key);

  @override
  State<nex1> createState() => _nex1State();
}

class _nex1State extends State<nex1> {
  final TextEditingController _name = TextEditingController();
  final TextEditingController _number = TextEditingController();
  final TextEditingController _address = TextEditingController();

  final List<String> _text = List.empty(growable: true);

  void _navigateToDetail(String data) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) =>Edit( data:data,),
      ),
    ).then((editedData) {
      if (editedData != null) {
        setState(() {
          _text[_text.indexWhere((element) => element == data)] = editedData;
        });
      }
    });
  }
  void _navigateToDetails(String data) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => nex2(data: data),
      ),
    );
  }
  void _addItemToList() {
    String text1 = _name.text;
    String text2 = _number.text;
    String text3 = _address.text;

    if (text1.isNotEmpty && text2.isNotEmpty && text3.isNotEmpty) {
      setState(() {
        _text.add('$text1\n$text2\n$text3');
        _name.clear();
        _number.clear();
        _address.clear();
      });
    }
  }
  void _deleteItem(int index) {
    setState(() {
      _text.removeAt(index);
    });
  }
final key=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
        ),
        body:
           Form(
             key: key,
             child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [//SizedBox(height: 10),
                  TextFormField(
                    validator: (val){
                      if(val==null||val.isEmpty){
                        return 'enter a name';
                      }

                    },
                    controller: _name,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      errorStyle: TextStyle(color:Colors.blue.shade400),
                      labelText: 'Enter Your Name',
                      labelStyle: TextStyle(color: Colors.green.shade400),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 25),
                  TextFormField(
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(
                        RegExp(r"[0-9]"),
                      )],
                    validator: (val2){
                      if(val2==null||val2.isEmpty){
                        return 'enter a number';
                      }
                      if(val2.length !=10)
                      {
                        return"plase enter the a 10 digite phone number";
                      }
                      return null;
                    },
                    keyboardType: TextInputType.number,
                    controller: _number,
                    decoration: InputDecoration(
                        labelText: 'Enter Your Number',
                        errorStyle: TextStyle(color:Colors.blue.shade400),
                      labelStyle: TextStyle(color: Colors.green.shade400),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    maxLines: 2,
                    validator: (val3){
                      if(val3==null||val3.isEmpty){
                        return 'enter a address';
                      }

                    },
                    controller: _address,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      labelStyle: TextStyle(color: Colors.green.shade400),
                      errorStyle: TextStyle(color:Colors.blue.shade400),
                      labelText: 'Enter a addres',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 25),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if(key.currentState!.validate())
                        {
                          ScaffoldMessenger.of(context).
                          showSnackBar(const SnackBar(content: Text("ok")) );
                          _addItemToList();
                        }
                      });

                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red.shade200,
                      minimumSize: Size(100, 50)
                    ),
                    child: Text("Ok",style: TextStyle(fontSize: 25),),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 300,
                    decoration: BoxDecoration(border: Border.all(width: 2)),
                    child: ListView.builder(
                      itemCount: _text.length,
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () {
                            _navigateToDetails(_text[index]);
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Container(
                              color: Colors.greenAccent,
                              child: ListTile(
                   
                                title: Center(
                                  child: Text(
                                    _text[index],
                                    style: TextStyle(
                                        fontSize: 18, fontWeight: FontWeight.bold),
                                  ),
                                ),
                                trailing: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    IconButton(
                                      icon: Icon(Icons.edit,size: 30,color: Colors.white,),
                                      onPressed: () {
                                       _navigateToDetail(_text[index]);
                                      },
                                    ),
                                    IconButton(
                                      icon: Icon(Icons.delete_outline_rounded,size: 30,color: Colors.redAccent,),
                                      onPressed: () {
                                     // _writtentext.removeAt(index);
                                        _deleteItem(index);
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
                       ),
           ),
        ),

    );
  }
}

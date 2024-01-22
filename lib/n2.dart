import 'package:flutter/material.dart';
import 'n3.dart';

class nex2 extends StatefulWidget {
  final String data;


  nex2({Key? key, required this.data,}) : super(key: key);

  @override
  State<nex2> createState() => _nex2State();
}

class _nex2State extends State<nex2> {
  List<String> dataList = [];
  final List<String> _text = [];
  // void _addItemToList() {
  //   String text1 = _name.text;
  //   String text2 = _number.text;
  //   String text3 = _address.text;
  //
  //   if (text1.isNotEmpty && text2.isNotEmpty && text3.isNotEmpty) {
  //     setState(() {
  //       _text.add('$text1\n$text2\n$text3');
  //
  //     });
  //   }
  // }
  @override

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

  // void _deleteItem(int index) {
  //   setState(() {
  //     _text.removeAt(index);
  //   });
  // }
  // void editItem(int index) {
  //   // Implement your edit logic here
  // }
  @override
  Widget build(BuildContext context) {
    List<String> dataList = widget.data.split('\n');

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Next Page',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),

      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Card(
                   color:Colors.greenAccent ,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Name: ${dataList[0]}', style: TextStyle(fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Phone Number: ${dataList[1]}',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Address: ${dataList[2]}',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: Icon(Icons.edit,size: 30,),
                            onPressed: () {
                             // _navigateToDetail(_text[]);
                            },
                          ),
                          IconButton(
                            icon: Icon(Icons.delete_outline_rounded,size: 30,),
                            onPressed: () {
                              // _writtentext.removeAt(index);
                             // _deleteItem(index);
                            },
                          ),
                        ],
                      ),
                    ),
                    // ListTile(
                    //   title:
                    //
                    // ),
                    // ListTile(
                    //   title:
                    //   Text(
                    //     'Address: ${dataList[2]}',
                    //     style: TextStyle(
                    //       fontSize: 18,
                    //       color: Colors.black,
                    //       fontWeight: FontWeight.bold,
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

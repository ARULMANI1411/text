import 'package:flutter/material.dart';
class Edit extends StatefulWidget {
  final String data;

  const Edit({Key? key, required this.data}) : super(key: key);

  @override
  _EditState createState() => _EditState();
}

class _EditState extends State<Edit> {
  late TextEditingController _name;
  late TextEditingController _password;
  late TextEditingController _address;


  @override
  void initState() {
    super.initState();
    List<String> dataList = widget.data.split('\n');
    _name = TextEditingController(text: dataList[0]);
    _password = TextEditingController(text: dataList[1]);
    _address = TextEditingController(text: dataList[2]);
  }

  // @override
  // void dispose() {
  //   _name.dispose();
  //   _password.dispose();
  //   _address.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit ',
          style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
        ),

      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: _name,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: 'Edit Name',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              keyboardType: TextInputType.number,
              controller: _password,
              decoration: InputDecoration(
                labelText: 'Edit Phone Number',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              keyboardType: TextInputType.text,
              controller: _address,
              decoration: InputDecoration(
                labelText: 'Edit address',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                String editedData =
                    '${_name.text}\n${_password.text}\n${_address.text}';
                Navigator.pop(context, editedData);
              },
              child: Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}

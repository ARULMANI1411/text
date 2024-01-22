import 'package:flutter/material.dart';

class Add extends StatefulWidget {
  const Add({super.key});

  @override
  State<Add> createState() => _AddState();
}

class _AddState extends State<Add> {
  final ctrl = TextEditingController();
  String add = "";
  List list = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextFormField(
          controller: ctrl,
      ),
          ElevatedButton(onPressed: (){
            setState(() {
              add = ctrl.text;
              var b = list.add(add);
              ctrl.text = " ";
            });

          }, child: Text("ok")),
           Container(
             height: 200,
             width: 200,
             decoration: BoxDecoration(
               border: Border.all()
             ),
             child: ListView.builder(
               itemCount: list.length,
               itemBuilder: (BuildContext context,  index) {
               return Text(list[index].toString());
             },
           )
           )
        ],
      ),
    );
  }
}

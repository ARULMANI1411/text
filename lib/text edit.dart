import 'package:flutter/material.dart';
class edit extends StatefulWidget {
  const edit({super.key});

  @override
  State<edit> createState() => _editState();
}

class _editState extends State<edit> {
  TextEditingController myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
         body:Column(
           children: [
             SizedBox(height: 50,),
             TextFormField(

       decoration:InputDecoration(

         hintText: 'First name',

         border: OutlineInputBorder(
           borderRadius: BorderRadius.circular(10)
         )
       ) ,
               textAlign: TextAlign.end,
               controller: myController,
             ),
             SizedBox(height: 30,),
             ElevatedButton(onPressed: (){
               setState(() {
                 myController.text="3";
               });

             }, child: Text(
               "3"
             ),
               style: ElevatedButton.styleFrom(minimumSize: Size(100, 60),
              backgroundColor: Colors.greenAccent,
                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))
               ),
             )
           ],
         ) ,
    );
  }
}

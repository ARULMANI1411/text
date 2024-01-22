import 'package:flutter/material.dart';
import 'package:text/Cal.dart';
import 'package:text/bmi%20cal.dart';
import 'package:text/gst%20cal.dart';
import 'package:text/show%20data.dart';



import 'n1.dart';
class calapp extends StatefulWidget {
  const calapp({super.key});

  @override
  State<calapp> createState() => _calappState();
}

class _calappState extends State<calapp> {


  int _index=0;
  final pages=[
    nex1(),
    ca(),
    gst(),
    bmi(),
    Data(),
  ];
  void tap(index)
  {
    setState(() {
      _index=index;
    });
  }
       DateTime backpress=DateTime.now();
            // DateTime?tap

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async{
final time= DateTime.now().difference(backpress);
           print("$time");
           final back= time >=Duration(seconds: 2);

       backpress= DateTime.now();
       if(back){
       final  snack=
             SnackBar(
               content: Text('Double tap to exit'),duration:Duration(seconds: 2),
             );
       ScaffoldMessenger.of(context).showSnackBar(snack);
         return false;
       }
         else{
           return true;
       }


      },
      child: Scaffold(
        appBar: AppBar(

        ),
        body: pages[_index],
        bottomNavigationBar:BottomNavigationBar(
          selectedItemColor: Colors.greenAccent,
          unselectedItemColor: Colors.cyanAccent,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.perm_contact_cal),label:'add'),
            BottomNavigationBarItem(icon: Icon(Icons.calculate),label:'CAL'),
            BottomNavigationBarItem(icon: Icon(Icons.calculate_rounded),label:'GST'),
            BottomNavigationBarItem(icon: Icon(Icons.calculate_outlined),label:'BMI'),
            BottomNavigationBarItem(icon: Icon(Icons.dashboard_outlined),label:'DATA'),
          ],
          currentIndex: _index,
          onTap: tap,
        ) ,
      ),
    );
  }
}

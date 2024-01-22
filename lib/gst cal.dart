import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:text/theme_provider.dart';
class gst extends StatefulWidget {
  const gst({super.key});

  @override
  State<gst> createState() => _gstState();
}

class _gstState extends State<gst> {

  bool _switch=false;
  // ThemeData _dark= ThemeData(brightness: Brightness.dark);
  // ThemeData _light= ThemeData(brightness: Brightness.light);

  TextEditingController amount= TextEditingController();
  TextEditingController gst= TextEditingController();
  String num1="";
  String num2="";
  String oper="";
  bool cli=false;

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
        // theme:_switch?_dark:_light,
      home: Scaffold(
      appBar: AppBar(
        title: Center(child: Text('GST',style: TextStyle(fontSize: 30),)),
      
      ),
        body: Column(
  children: [

    SizedBox(height: MediaQuery.of(context).size.height*0.10,),
    Padding(
      padding: const EdgeInsets.all(10),
      child: TextFormField(
        keyboardType: TextInputType.number,
        controller: amount,
      decoration: InputDecoration(hintText: 'Enter amount',
        focusedBorder: OutlineInputBorder(
       borderRadius: BorderRadius.circular(20),borderSide: BorderSide(color: Theme.of(context).colorScheme.primary)),
        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: BorderSide(color: Theme.of(context).colorScheme.primary,width: 3)),
      ),
        textAlign: TextAlign.end,
      ),
    ),
    SizedBox(height: MediaQuery.of(context).size.height*0.05,),
    Padding(
      padding: const EdgeInsets.all(10),
      child: TextFormField(
        keyboardType: TextInputType.number,
        controller: gst,
        decoration: InputDecoration(hintText: 'Enter gst %',
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),borderSide: BorderSide(color:Theme.of(context).colorScheme.primary,width: 3)),
          enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: BorderSide(color: Theme.of(context).colorScheme.primary,width: 3)),
        ),
        textAlign: TextAlign.end,
      ),
    ),
    SizedBox(height: MediaQuery.of(context).size.height*0.03,),
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(onPressed: (){
          showDialog(context: context,
            builder:(context)=>AlertDialog(
              actions: [
                TextButton(onPressed: (){
                  Navigator.of(context).pop(context);
                },
                    child:Text(' OK',style: TextStyle(fontSize: 40,color:Theme.of(context).colorScheme.primary)))
              ],
              title: Text('EXT: ${amount.text}',style: TextStyle(fontSize: 40,color:Theme.of(context).colorScheme.primary ),),
            ),
          );
          setState(() {
            double a = double.parse(amount.text);
            double b = double.parse(gst.text);
            double res=a+(a*b/100);
            amount.text=res.toString();
          });

        }, child: Text("EXT",style: TextStyle(fontSize: 25),),
          style: ElevatedButton.styleFrom(minimumSize: Size(70, 50)), ),
    ElevatedButton(onPressed: (){
      showDialog(context: context,
        builder:(context)=>AlertDialog(
          actions: [
            TextButton(onPressed: (){
              Navigator.of(context).pop(context);
            },
                child:Text(' OK',style: TextStyle(fontSize: 40,)))
          ],
          title: Text('EXT%: ${amount.text}',style: TextStyle(fontSize: 40),),
        ),
      );
    setState(() {
    double a = double.parse(amount.text);
    double b = double.parse(gst.text);
    double res=(a*b/100);
    amount.text=res.toString();
    });

    }, child: Text("EXT% ",style: TextStyle(fontSize: 25),),
    style: ElevatedButton.styleFrom(minimumSize: Size(70, 50)), )

      ],
    ),
    SizedBox(height: MediaQuery.of(context).size.height*0.03,),
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(onPressed: (){
          showDialog(context: context,
            builder:(context)=>AlertDialog(
              actions: [
                TextButton(onPressed: (){
                  Navigator.of(context).pop(context);
                },
                    child:Text(' OK',style: TextStyle(fontSize: 40,color: Colors.cyanAccent)))
              ],
              title: Text('INT: ${amount.text}',style: TextStyle(fontSize: 40),),
            ),
          );

          setState(() {
            double a = double.parse(amount.text);
            double b = double.parse(gst.text);
            double res=(a*(100/(100+b)));
            amount.text=res.toString();
          });

        }, child: Text("INT",style: TextStyle(fontSize: 25),),
          style: ElevatedButton.styleFrom(minimumSize: Size(70, 50)), ),
        ElevatedButton(onPressed: (){
          showDialog(context: context,
            builder:(context)=>AlertDialog(
              actions: [
                TextButton(onPressed: (){
                  Navigator.of(context).pop(context);
                },
                    child:Text(' OK',style: TextStyle(fontSize: 40,color: Colors.cyanAccent)))
              ],
              title: Text('INT%: ${amount.text}',style: TextStyle(fontSize: 40),),
            ),
          );


          setState(() {
            double a = double.parse(amount.text);
            double b = double.parse(gst.text);
            double res=a-(a*(100/(100+b)));

             amount.text=res.toString();
          });

        }, child: Text("INT% ",style: TextStyle(fontSize: 25),),
          style: ElevatedButton.styleFrom(minimumSize: Size(70, 50)), )
      ],
    ),
    SizedBox(height: MediaQuery.of(context).size.height*0.05,),
    ElevatedButton(onPressed: (){
          amount.text="";
          gst.text="";


    }, child: Text("c",style: TextStyle(fontSize: 30),),
    style: ElevatedButton.styleFrom(minimumSize: Size(70, 50)), ),


    // Container(
    //   height: MediaQuery.of(context).size.height*0.30,
    //   width: MediaQuery.of(context).size.width*0.98,
    //   decoration: (BoxDecoration(border: Border.all(width: 4))),
    //
    //   child: Column(
    //     children: [
    //
    //     ],
    //   ),
    //
    // ),


  ],
),
    )
    );
  }
}

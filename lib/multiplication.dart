import 'package:flutter/material.dart';
import 'package:text/multiModel.dart';

class multi extends StatefulWidget {
  const multi({super.key});

  @override
  State<multi> createState() => _multiState();
}

class _multiState extends State<multi> {
TextEditingController table =TextEditingController();
TextEditingController count =TextEditingController();
List<MultiModel> list =[];

 late int _product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50,),
            Row(
              children: [
                SizedBox(width: 28,),
                Text("TABLE:",style: TextStyle(fontSize: 20),),
                SizedBox(width: 20,),
                Container(
                  width: 80,
                  child: TextField(
                    controller: table,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 3,),
                      ),
                      focusedBorder: OutlineInputBorder( borderSide: BorderSide(
                          width: 3, ), )
                    ),

                  ),
                ),
              ],
            ),
            SizedBox(height: 30,),
            Row(
              children: [
                SizedBox(width: 20,),
                Text("COUNT:",style: TextStyle(fontSize: 20),),
                SizedBox(width: 20,),
                Container(
                  width: 80,
                  child: TextField(
                    controller: count,
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 3, ), //<-- SEE HERE
                        ),
                        focusedBorder: OutlineInputBorder( borderSide: BorderSide(
                            width: 3, ), )
                    ),

                  ),
                ),
              ],
            ),
            SizedBox(height: 30,),
            ElevatedButton(onPressed:(){
                setState(() {
                  int a = int.parse(table.text);
                  int b = int.parse(count.text);
                   for(int i=1;i<=b;i++){
                       _product=a*i;
                       print("$i*$a=${_product}");
                       MultiModel dataAdd = MultiModel(m1: i, m2: a, product: _product);
                       list.add(dataAdd);
                   };
                  //  MultiModel dataAdd = MultiModel(m1: a, m2: b, product: _product);
                  // list.add(dataAdd);

                });

            }, child:Text('TABLE')),
            SizedBox(height: 20,),
            Container(
              height: 900,
              width: 380,
              color:Theme.of(context).colorScheme.secondary,
             child: ListView.builder(
                itemCount: list.length,
                itemBuilder: (BuildContext context, index) {
                  return Text("${list[index].m1.toString()} * ${list[index].m2.toString()} = ${list[index].product.toString()}",style: TextStyle(fontSize: 20),);
                },
              ),
            )
          ],
        ),
      )
    );
  }
}

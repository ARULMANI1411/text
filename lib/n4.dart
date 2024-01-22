// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MyReorderableList(),
//     );
//   }
// }
//
// class MyReorderableList extends StatefulWidget {
//   @override
//   _MyReorderableListState createState() => _MyReorderableListState();
// }
//
// class _MyReorderableListState extends State<MyReorderableList> {
//   List<String> items = ["Item 1", "Item 2", "Item 3", "Item 4", "Item 5"];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Reorderable List"),
//       ),
//       body: ReorderableListView(
//         onReorder: (int oldIndex, int newIndex) {
//           setState(() {
//             if (newIndex > oldIndex) {
//               newIndex -= 1;
//             }
//             final String item = items.removeAt(oldIndex);
//             items.insert(newIndex, item);
//           });
//         },
//         children: List.generate(
//           items.length,
//               (index) => ListTile(
//             key: Key('$index'),
//             title: Text(items[index]),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('ReorderableListView Example'),
        ),
        body:Container(
          child: Column(
            children: [

            ],
          ),

        ),
      ),
    );
  }
}

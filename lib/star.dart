import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
class starrate extends StatefulWidget {
  const starrate({super.key});

  @override
  State<starrate> createState() => _starrateState();
}

class _starrateState extends State<starrate> {
  double star=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Row(
        children: [
          Center(
          child: RatingBar.builder(
          initialRating: 0,
          minRating: 1,
          direction: Axis.horizontal,
          allowHalfRating: true,
          itemCount: 5,
          itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
          itemBuilder: (context, _) => Icon(
            Icons.star,
            color: Colors.amber,
          ),
          onRatingUpdate: (rating) {
            // Handle the rating update here
            print(rating);
            setState(() {
         star=rating;
            });
          },
              ),
              ),
          SizedBox(width: 20,),
          Text('${star}',style: TextStyle(fontSize: 29),)
        ],
      ),
    );
  }
}

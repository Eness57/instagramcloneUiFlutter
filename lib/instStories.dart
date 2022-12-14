import 'package:flutter/material.dart';


class InstaStories extends StatelessWidget{
  static var faces = [
    "https://images.pexels.com/photos/638700/pexels-photo-638700.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "https://images.pexels.com/photos/762020/pexels-photo-762020.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "https://images.pexels.com/photos/713312/pexels-photo-713312.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
  ];

  final topText = Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children:const <Widget> [
     Text(
        "Hikayeler",style: TextStyle(fontWeight: FontWeight.bold),
      ),
    ],
  );

  final stories = Expanded(
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: faces.length,
      itemBuilder: (context, index) => new Stack(
        alignment: Alignment.bottomRight,
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(horizontal: 8.0),
            width: 60.0,
            height: 60.0,
            decoration: new BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.blueAccent),
              image: DecorationImage(
                fit: BoxFit.fitHeight,
                image: NetworkImage(faces[index]),
              ),
            ),
          ),
          index == 0
              ? Positioned(
            right: 10.0,
            child: CircleAvatar(
              backgroundColor: Colors.blueAccent,
              radius: 10.0,
              child: Icon(
                Icons.add,
                size: 14.0,
                color: Colors.white,
              ),
            ),
          )
              : Container()
        ],
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[topText, stories],
      ),
    );
  }

}
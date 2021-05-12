import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class restaurant extends StatefulWidget {
  restaurant({Key key, this.title}) : super(key: key);

  final String title;


  @override
  _restaurantState createState() => _restaurantState();
}

class _restaurantState extends State<restaurant> {
  String image2 ="assets/piz.jpg";
  String image1 ="assets/meal.jpeg";
  String image3 ="assets/vegitables.jpeg";
  String text1 = "Meal";
  String text2 = "Pizaa";
  String text3 = "Vegitables";


  List counts = ["1" ,"2" , "3" , "4"];
  String _selectedCount ="1";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text("Restaurant Menu",style: TextStyle(fontSize: 30, color: Colors.white),),
        ),
        body: Center(
          child: ListView(
            children: [
             cards(image1, text1),
              cards(image2, text2),
              cards(image3, text3),
            ],
          )
    ),
    );
  }
  Widget cards(image , text){
    return Container(
      height: 275,
      width: 400,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.0),
        ),
        color: Colors.orange,
        child: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30.0),
                      child: Image.asset('$image', width: 310,),
                    ),
                    Text("$text", style: TextStyle(fontSize: 20, color: Colors.white),)
                  ],
                ),
              ),
              DropdownButton(
                  value: _selectedCount,
                  items: counts.map((count){
                           return DropdownMenuItem(
                              child: Text(count),
                                 value: count,
                             );
                          }
                       ).toList(),
                  style: TextStyle(color: Colors.black87, fontSize: 25,),
                  onChanged: (value) {
                    setState(() {
                      _selectedCount = value;
                    });
                  }
                  ),
            ]
        ),
      ),
    );
  }
}
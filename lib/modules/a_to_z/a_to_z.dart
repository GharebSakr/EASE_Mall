import 'package:flutter/material.dart';
import '../directory/directory.dart';

class AzScreen extends StatelessWidget {
  @override
  List<String> countries = [
    "Nepal",
    "India",
    "Pakistan",
    "Bangladesh",
    "USA",
    "Canada",
    "China",
    "Russia",
  ];
  Widget build(BuildContext context) {
    countries.sort((a,b){return a.compareTo(b);});
    return Scaffold(

      body:Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(20),
        child: Column(
          children: countries.map((cone){
              return Container(
              child:Card(
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(15),
                  child: Text(cone,style: TextStyle(fontSize: 18),),
                ),
              ) ,
              );
      }).toList(),

        ),
      ),
    );
  }
}
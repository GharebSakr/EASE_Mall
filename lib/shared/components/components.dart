import 'package:flutter/material.dart';

class Page extends StatelessWidget {
  const Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

        title: Text('EASE Mall'),
        centerTitle: true,
        backgroundColor: Colors.red,
        leading: Icon(Icons.menu),
        actions: [

          Icon(Icons.info_outline),
          SizedBox(width: 12,)

        ],

      ),

    );
  }
}

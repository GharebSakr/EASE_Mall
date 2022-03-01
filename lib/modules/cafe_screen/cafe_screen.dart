import 'package:ease_mall/modules/food_screen/food_screen.dart';
import 'package:ease_mall/modules/information_screen/information_screen.dart';
import 'package:flutter/material.dart';


class CafeScreen extends StatefulWidget {
  @override
  State<CafeScreen> createState() => _CafeScreenState();
}

class _CafeScreenState extends State<CafeScreen> {
  Color _iconColor = Colors.grey;

  IconData _iconShape= Icons.favorite_border;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Cafes'),
        centerTitle: true,
        backgroundColor:Colors.blueGrey,
      ),

      body: ListView.builder(
          itemCount: 31,
          itemBuilder: (BuildContext context,int index){
            return Card(
              child: ListTile(
                leading: Container(
                  padding: EdgeInsets.all(10),
                  child: Image.asset(
                      'assets/images/images.png'
                  ),
                ),
                trailing:  IconButton(
                  icon: Icon(_iconShape),
                  color: _iconColor,
                  onPressed: () {
                    setState(() {
                      if(_iconColor == Colors.grey){
                        _iconShape = Icons.favorite;
                        _iconColor = Colors.red;
                      }else{
                        _iconShape = Icons.favorite_border;
                        _iconColor = Colors.grey;
                      }
                    });
                  },
                ),
                title:Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Text("cafeshop",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,),),
                    Row(
                      children: [Icon(Icons.location_on,size: 20,),
                        Text('Level0',style: TextStyle(color: Colors.grey),),
                      ],
                    ),
                  ],

                ),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> InformationScreen()));
                },
              ),
            );
          }

      ),
    );
  }
}
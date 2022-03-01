import 'package:flutter/material.dart';

class ServicesPage extends StatelessWidget {
  const ServicesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

        title: Text('Services'),
        backgroundColor: Colors.red,
        centerTitle: true,

      ),
      body:   ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[


          ListTile(
            leading: Icon(Icons.wifi, color: Colors.red,),
            title: Text('Free Wi-Fi Connection'
              ,style: TextStyle(

                fontWeight: FontWeight.bold,

              ),
            ),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.wheelchair_pickup,color: Colors.red,),
            title: Text('Wheel Chairs',style: TextStyle(

              fontWeight: FontWeight.bold,

            ),),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.wc,color: Colors.red,),
            title: Text('WC',style: TextStyle(

              fontWeight: FontWeight.bold,

            ),),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.local_parking_outlined,color: Colors.red,),
            title: Text('Parking',style: TextStyle(

              fontWeight: FontWeight.bold,

            ),),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.atm,color: Colors.red,),
            title: Text('ATM',style: TextStyle(

              fontWeight: FontWeight.bold,

            ),),
            onTap: () => {},
          ),
        ],
      ),

    );
  }
}

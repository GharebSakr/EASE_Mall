import 'package:flutter/material.dart';

class AboutUS extends StatelessWidget {
  const AboutUS({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

        title: Text('About US'),
        backgroundColor: Colors.red,
        centerTitle: true,

      ),
      body:   ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[


          ListTile(
            leading: Icon(Icons.account_box_outlined, color: Colors.red,),
            title: Text('About Us'
              ,style: TextStyle(

                fontWeight: FontWeight.bold,

              ),
            ),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.hourglass_bottom,color: Colors.red,),
            title: Text('Working Hours',style: TextStyle(

              fontWeight: FontWeight.bold,

            ),),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.rule_sharp,color: Colors.red,),
            title: Text('Rules & Regulations',style: TextStyle(

              fontWeight: FontWeight.bold,

            ),),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.waterfall_chart,color: Colors.red,),
            title: Text('Terms & Conditions',style: TextStyle(

              fontWeight: FontWeight.bold,

            ),),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.privacy_tip,color: Colors.red,),
            title: Text('Privacy Policiy',style: TextStyle(

              fontWeight: FontWeight.bold,

            ),),
            onTap: () => {},
          ),
        ],
      ),

    );
  }
}

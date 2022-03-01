import 'package:ease_mall/modules/mall_page/mall_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text('Choose Your Shopping Experience'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Stack(

        children: [
          Container(

            decoration: BoxDecoration(

                image: DecorationImage(
                  image: NetworkImage('https://a.cdn-hotels.com/gdcs/production183/d391/c1e560f1-7034-44d7-8ce6-17b3fdcbe4b7.jpg'),
                  fit: BoxFit.cover,




                )

            ),

          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 350,
                  child: MaterialButton(
                    onPressed: (){},
                    color: Colors.red,
                    child: Text('Online Shopping',
                      style: TextStyle(

                          fontWeight: FontWeight.bold,
                          fontSize: 30

                      ),

                    ),
                    textColor: Colors.white,
                    height: 50,




                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  width: 350,
                  child: MaterialButton(
                    onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MallPage(),
                          )
                      );


                    },
                    color: Colors.blueAccent,
                    child: Text('Inside Mall Shopping', style: TextStyle(

                        fontWeight: FontWeight.bold,
                        fontSize: 30

                    ),),
                    textColor: Colors.white,
                    height: 50,




                  ),
                ),
              ],
            ),
          ),



        ],
      ),

    );
  }
}

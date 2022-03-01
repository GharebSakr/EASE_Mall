import 'package:ease_mall/modules/home_page/home_page.dart';
import 'package:ease_mall/modules/login_page/login_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(


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
            child: Container(
              height: 150,

              decoration: BoxDecoration(

                  image: DecorationImage(image: NetworkImage('https://png2.cleanpng.com/sh/9e331c2918876292f0d6585f45c8f701/L0KzQYm3VcI1N5tojJH0aYP2gLBuTf1ieqUyh9DuLYbsd7L1TgRpbV5yed51LXH3Pb7wjPxmdppmReVxb4DzebBuTfNmdqV3ReV9ZYLvebBuTcVjOGdmTNMCNXbpQoO5Tsc1P2g2SKUDMUW1R4K9UsAzO2QAS5D5bne=/kisspng-mart-one-vigan-the-mall-at-millenia-shopping-centr-sterling-5b06a4a75ff222.747710381527162023393.png'))
                  ,
                  color: Colors.white.withOpacity(0.7)
              ),

            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 180,
                    child: MaterialButton(
                      onPressed: (){

                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginScreen(),
                            )
                        );

                      },
                      color: Colors.red,
                      child: Text('MEMBER'),
                      textColor: Colors.white,
                      height: 30,



                    ),
                  ),
                  Container(
                    width: 180,
                    child: MaterialButton(
                      onPressed: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomePage(),
                            )
                        );

                      },
                      color: Colors.blueAccent,
                      child: Text('GUEST'),
                      textColor: Colors.white,
                      height: 30,




                    ),
                  ),
                  SizedBox(height: 20,)
                ],
              ),
            ],
          ),



        ],
      ),

    );
  }
}

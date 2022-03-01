import 'package:ease_mall/modules/about_us/about_us.dart';
import 'package:ease_mall/modules/contact_us_page/contact_us_page.dart';
import 'package:ease_mall/modules/food_screen/food_screen.dart';
import 'package:ease_mall/modules/mall_map_screen/mall_map_screen.dart';
import 'package:ease_mall/modules/services/services.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../directory/directory.dart';

class MallPage extends StatelessWidget {
  const MallPage ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title:Text("EASE Mall"), //appbar title
          backgroundColor: Colors.redAccent, //appbar background color
          leading: Icon(Icons.menu),
          actions: [
            Icon(Icons.manage_accounts),
            SizedBox(width: 10,)

          ],
        ),
        body: Container(
            alignment:Alignment.topCenter,
            padding: EdgeInsets.all(1),
            child: StaggeredGridView.count(
                crossAxisCount: 3, //total cross (Horizontal) axix 3
                staggeredTiles: const <StaggeredTile>[
                  StaggeredTile.count(1, 2),  //(width, height)// width 1 part of total cross axis
                  StaggeredTile.count(1, 1), //(width, height)// width 1 part of total cross axis
                  StaggeredTile.count(1, 1), //(width, height)// width 1 part of total cross axis
                  StaggeredTile.count(2, 1), //(width, height)// width 2 part of total cross axis
                  StaggeredTile.count(3, 1.5), //(width, height)// width 1 part of total cross axis
                  StaggeredTile.count(2, 1),
                  StaggeredTile.count(1, 1),
                  StaggeredTile.count(1, 1),
                  StaggeredTile.count(1, 1),
                  StaggeredTile.count(1, 1),




                ],
                children:[
                  GestureDetector(
                      child: Container(
                          alignment: Alignment.center,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.store_mall_directory_outlined,
                                color: Colors.white,
                                size: 40.0,
                              ),
                              Text(
                                'DIRECTORY',
                                textAlign: TextAlign.center,

                                style: TextStyle(

                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold

                                ),


                              ),
                            ],
                          ),
                          width:120,
                          height: 80,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            backgroundBlendMode: BlendMode.multiply,
                            image: DecorationImage(
                                image:NetworkImage('https://www.retail-insight-network.com/wp-content/uploads/sites/18/2019/11/1l-Image-Mall-of-Oman.jpg'),
                                fit:BoxFit.cover,
                                colorFilter: ColorFilter.mode(Colors.deepPurple.withOpacity(0.6),
                                    BlendMode.darken)
                            ),
                            // button text
                          )
                      ),onTap:(){
                    print("you clicked me");
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Directiry(),
                        )
                    );
                  }
                  ),

                  GestureDetector(
                      child: Container(
                          alignment: Alignment.center,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.movie_creation_outlined,
                                color: Colors.white,
                                size: 40.0,
                              ),
                              Text(
                                'CINEMA',
                                textAlign: TextAlign.center,

                                style: TextStyle(

                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold

                                ),


                              ),
                            ],
                          ),
                          width:120,
                          height: 80,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            backgroundBlendMode: BlendMode.multiply,
                            image: DecorationImage(
                                image:NetworkImage('https://assets.sentinelassam.com/h-upload/2020/12/23/1600x960_183821-cinema-hall.jpg'),
                                fit:BoxFit.cover,
                                colorFilter: ColorFilter.mode(Colors.red.withOpacity(0.6),
                                    BlendMode.darken)
                            ),
                            // button text
                          )
                      ),onTap:(){
                    print("you clicked me");
                  }
                  ),

                  GestureDetector(
                      child: Container(
                          alignment: Alignment.center,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.room_service,
                                color: Colors.white,
                                size: 40.0,
                              ),
                              Text(
                                'DINING',
                                textAlign: TextAlign.center,

                                style: TextStyle(

                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold

                                ),


                              ),
                            ],
                          ),
                          width:120,
                          height: 80,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            backgroundBlendMode: BlendMode.multiply,
                            image: DecorationImage(
                                image:NetworkImage('https://media-cdn.tripadvisor.com/media/photo-s/0f/96/15/39/dining-area.jpg'),
                                fit:BoxFit.cover,
                                colorFilter: ColorFilter.mode(Colors.amberAccent.withOpacity(0.6),
                                    BlendMode.darken)
                            ),
                            // button text
                          )
                      ),onTap:(){
                    print("you clicked me");
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FoodScreen(),
                        )
                    );
                  }
                  ),

                  GestureDetector(
                      child: Container(
                          alignment: Alignment.center,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.local_parking_outlined,
                                color: Colors.white,
                                size: 40.0,
                              ),
                              Text(
                                'PARKING',
                                textAlign: TextAlign.center,

                                style: TextStyle(

                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold

                                ),


                              ),
                            ],
                          ),
                          width:120,
                          height: 80,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            backgroundBlendMode: BlendMode.multiply,
                            image: DecorationImage(
                                image:NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThz4FOC9WfNTkNY4Qr9EEiTriO8Jlmiw7gzwV1uackVo_BqRUa2PJbOPrvCZEvtTkTMg&usqp=CAU'),
                                fit:BoxFit.cover,
                                colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.6),
                                    BlendMode.darken)
                            ),
                            // button text
                          )
                      ),onTap:(){
                    print("you clicked me");
                  }
                  ),

                  Container(  //box2
                      color: Colors.white,

                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 12),
                            alignment: Alignment.centerLeft,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,

                              children: [
                                Text('EASE Mall',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,

                                  ),
                                ),
                                Text('Provide Best For You Offers',
                                  style: TextStyle(fontSize: 16),
                                ),
                                Text('-Biggest Collection in the town.',
                                  style: TextStyle(fontSize: 12),
                                ),
                                Text('-Prices out of competition.',
                                  style: TextStyle(fontSize: 12),
                                ),
                                Text('-Variety of Colors & Sizes.',
                                  style: TextStyle(fontSize: 12),
                                ),
                                Text('-Biggest Collection in the town.',
                                  style: TextStyle(fontSize: 12),
                                ),
                                Text('-Prices out of competition.',
                                  style: TextStyle(fontSize: 12),
                                ),
                                Text('-Variety of Colors & Sizes.',
                                  style: TextStyle(fontSize: 12),
                                ),
                                Text('-Biggest Collection in the town.',
                                  style: TextStyle(fontSize: 12),
                                ),
                                Text('-Prices out of competition.',
                                  style: TextStyle(fontSize: 12),
                                ),
                                Text('-Variety of Colors & Sizes.',
                                  style: TextStyle(fontSize: 12),
                                ),
                              ],
                            ),

                          ),
                          SizedBox(width: 10,),
                          Container(
                              height: 180,
                              width: 180,
                              alignment: Alignment.center,
                              child: Image(image: NetworkImage('https://retailinasia.com/wp-content/uploads/2020/04/South-Korea-Department-Store-Online-Mall-Fashion-News-Retail-In-Asia-770x486.jpg')))
                        ],
                      ) //you can add image or other widgets
                  ),

                  GestureDetector(
                      child: Container(
                          alignment: Alignment.center,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.wc,
                                color: Colors.white,
                                size: 40.0,
                              ),
                              Text(
                                'FASHION',
                                textAlign: TextAlign.center,

                                style: TextStyle(

                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold

                                ),


                              ),
                            ],
                          ),
                          width:120,
                          height: 80,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            backgroundBlendMode: BlendMode.multiply,
                            image: DecorationImage(
                                image:NetworkImage('https://retaildesignblog.net/wp-content/uploads/2011/08/FF-fashion-store-by-Four-IV-Prague.jpg'),
                                fit:BoxFit.cover,
                                colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.6),
                                    BlendMode.darken)
                            ),
                            // button text
                          )
                      ),onTap:(){
                    print("you clicked me");
                  }
                  ),

                  GestureDetector(
                      child: Container(
                          alignment: Alignment.center,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.map_outlined,
                                color: Colors.white,
                                size: 40.0,
                              ),
                              Text(
                                'MALL MAP',
                                textAlign: TextAlign.center,

                                style: TextStyle(

                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold

                                ),


                              ),
                            ],
                          ),
                          width:120,
                          height: 80,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            backgroundBlendMode: BlendMode.multiply,
                            image: DecorationImage(
                                image:NetworkImage('https://www.retail-insight-network.com/wp-content/uploads/sites/18/2019/11/1l-Image-Mall-of-Oman.jpg'),
                                fit:BoxFit.cover,
                                colorFilter: ColorFilter.mode(Colors.red.withOpacity(0.6),
                                    BlendMode.darken)
                            ),
                            // button text
                          )
                      ),onTap:(){
                    print("you clicked me");
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MallMapScreen(),
                        )
                    );

                  }
                  ),

                  GestureDetector(
                      child: Container(
                          alignment: Alignment.center,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.phone,
                                color: Colors.white,
                                size: 40.0,
                              ),
                              Text(
                                'CONTACT US',
                                textAlign: TextAlign.center,

                                style: TextStyle(

                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold

                                ),


                              ),
                            ],
                          ),
                          width:120,
                          height: 80,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            backgroundBlendMode: BlendMode.multiply,
                            image: DecorationImage(
                                image:NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBSmd5HHY-r9D_be7vEJKo16WjIRtWoSzvRw&usqp=CAU'),
                                fit:BoxFit.cover,
                                colorFilter: ColorFilter.mode(Colors.red.withOpacity(0.6),
                                    BlendMode.darken)
                            ),
                            // button text
                          )
                      ),onTap:(){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ContactUS(),
                        )
                    );
                  }
                  ),

                  GestureDetector(
                      child: Container(
                          alignment: Alignment.center,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.cleaning_services,
                                color: Colors.white,
                                size: 40.0,
                              ),
                              Text(
                                'SERVICES',
                                textAlign: TextAlign.center,

                                style: TextStyle(

                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold

                                ),


                              ),
                            ],
                          ),
                          width:120,
                          height: 80,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            backgroundBlendMode: BlendMode.multiply,
                            image: DecorationImage(
                                image:NetworkImage('https://i.pinimg.com/originals/5b/86/d0/5b86d0bf45d9a77e007b1eefe9050404.jpg'),
                                fit:BoxFit.cover,
                                colorFilter: ColorFilter.mode(Colors.amberAccent.withOpacity(0.6),
                                    BlendMode.darken)
                            ),
                            // button text
                          )
                      ),onTap:(){
                    print("you clicked me");
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ServicesPage(),
                        )
                    );

                  }
                  ),

                  GestureDetector(
                      child: Container(
                          alignment: Alignment.center,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.info_outline,
                                color: Colors.white,
                                size: 40.0,
                              ),
                              Text(
                                'ABOUT US',
                                textAlign: TextAlign.center,

                                style: TextStyle(

                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold

                                ),


                              ),
                            ],
                          ),
                          width:120,
                          height: 80,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            backgroundBlendMode: BlendMode.multiply,
                            image: DecorationImage(
                                image:NetworkImage('https://retailinasia.com/wp-content/uploads/2020/04/South-Korea-Department-Store-Online-Mall-Fashion-News-Retail-In-Asia-770x486.jpg'),
                                fit:BoxFit.cover,
                                colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.6),
                                    BlendMode.darken)
                            ),
                            // button text
                          )
                      ),onTap:(){
                    print("you clicked me");
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AboutUS(),
                        )
                    );

                  }
                  ),


                  Container(  //box2
                      color: Colors.red,
                      child: Container() //you can add image or other widgets
                  ),

                  Container(  //box 3
                      color: Colors.blue,
                      child: Container() //you can add image or other widgets
                  ),

                  Container( // box 4
                      color: Colors.brown,
                      child: Container() //you can add image or other widgets
                  )

                ]
            )
        )
    );
  }
}

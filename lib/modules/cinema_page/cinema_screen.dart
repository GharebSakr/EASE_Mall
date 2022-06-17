import 'package:ease_mall/modules/cinema_page/vedio_screen.dart';
import 'package:flutter/material.dart';

class CinemaScreen extends StatefulWidget {
  const CinemaScreen({Key? key}) : super(key: key);

  @override
  State<CinemaScreen> createState() => _CinemaScreenState();
}

class _CinemaScreenState extends State<CinemaScreen> {
  List<String> images = [
    "assets/images/11.jpg",
    "assets/images/99.jpg",
    "assets/images/88.jpg",
    "assets/images/22.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cinema'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: GridView.builder(
        itemCount: images.length,
        itemBuilder: (BuildContext context, int index) {
          return MaterialButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => VideoApp(),
                    ));
              },
              child: Container(
                  height: 300, width: 300, child: Image.asset(images[index])));
        },
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 2),
        padding: EdgeInsets.all(2),
        shrinkWrap: true,
      ),
    );
  }
}

class CinemaPage extends StatefulWidget {
  const CinemaPage({Key? key}) : super(key: key);

  @override
  State<CinemaPage> createState() => _CinemaPageState();
}

class _CinemaPageState extends State<CinemaPage> {
  Color _iconColor = Colors.grey;

  IconData _iconShape = Icons.favorite_border;
  final List<String> entity = [
    'VIP Cinema',
    'Stars Cinema',
    'Diamond Cinema',
    'Golden Stars Cinema'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('CINEMA'),
          centerTitle: true,
          backgroundColor: Colors.blueGrey,
        ),
        body: ListView.builder(
            itemCount: 4,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                child: ListTile(
                  leading: Container(
                    padding: EdgeInsets.all(10),
                    child: Image.asset('assets/images/gb.jpg'),
                  ),
                  trailing: IconButton(
                    icon: Icon(_iconShape),
                    color: _iconColor,
                    onPressed: () {
                      setState(() {
                        if (_iconColor == Colors.grey) {
                          _iconShape = Icons.favorite;
                          _iconColor = Colors.red;
                        } else {
                          _iconShape = Icons.favorite_border;
                          _iconColor = Colors.grey;
                        }
                      });
                    },
                  ),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${entity[index]}',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            size: 20,
                          ),
                          Text(
                            'Level0',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CinemaScreen()));
                  },
                ),
              );
            }));
  }
}

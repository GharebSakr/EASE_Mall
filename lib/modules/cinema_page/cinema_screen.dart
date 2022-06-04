import 'package:flutter/material.dart';

class CinemaScreen extends StatefulWidget {
  const CinemaScreen({Key? key}) : super(key: key);

  @override
  State<CinemaScreen> createState() => _CinemaScreenState();
}

class _CinemaScreenState extends State<CinemaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Cinema'),
          centerTitle: true,
          backgroundColor: Colors.blueGrey,
        ),
        body: GridView(
            padding: EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 12,
            ),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 16, mainAxisSpacing: 16),
            children: [
              Image.network('https://picsum.photos/250?image=1'),
              Image.network('https://picsum.photos/250?image=2'),
              Image.network('https://picsum.photos/250?image=3'),
            ]));
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
                        "VIP Cinema",
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

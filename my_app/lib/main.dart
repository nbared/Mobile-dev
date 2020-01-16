import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: NinjaCard()
));

class NinjaCard extends StatefulWidget {
  @override
  _NinjaCardState createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {

  int ninjaLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900
      ],
      appBar: AppBar(
        title: Text("Ninja ID Card"),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            ninjaLevel += 1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[500],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child:
              CircleAvatar(
                  backgroundImage: AssetImage('assets/jonas-vincent-xulIYVIbYIc-unsplash.jpg'),
                  radius: 50.0
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.grey[500],
            ),
            Text(
          'Name',
          style: TextStyle(
          color: Colors.grey,
            letterSpacing: 2.0,
      ),
      ),
            SizedBox(
              height: 10,
            ),
            Text(
            'MouseCat',
            style: TextStyle(
            color: Colors.deepOrange,
            letterSpacing: 2.0,
            fontSize: 24.0,
            fontWeight: FontWeight.bold
            ),
          ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Ninja Level',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
                '$ninjaLevel',
                style: TextStyle(
                    color: Colors.deepOrange,
                    letterSpacing: 2.0,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold
                ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey
                ),
                SizedBox(width: 10,),
                Text('mouscat@meow.com',
                  style: TextStyle(
                    color: Colors.deepOrange,
                    fontSize: 18.0,
                    letterSpacing: 1.0
                  ),
                ),
              ],
            ),
      ],
      ),
      ),
    );
  }
}
 


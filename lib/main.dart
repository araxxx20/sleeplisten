import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Profile()
  ));
}

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('sleeplisten'),
        backgroundColor: Colors.pink[300], // Pink AppBar
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Padding(
              padding: EdgeInsets.only(top: 30),
              child: Text(
                'User Profile',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.pink[300],
                ),
              ),
            ),
          ),
          Center(
            child:  Icon(
              Icons.person, size: 150, color: Colors.black,
            ),
          ),


          // Name
          Container(
            margin: EdgeInsets.fromLTRB(10, 50, 15, 10),
            padding: EdgeInsets.symmetric(vertical: 0, horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Name:',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,

                  ),
                ),
                Text(
                  'Ara L. Hernandez',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink[300],
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
          ),

          // Email
          Container(
            margin: EdgeInsets.fromLTRB(10, 0, 15, 10),
            padding: EdgeInsets.symmetric(vertical: 0, horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Email:',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'hernandezara077@gmail.com',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink[300],
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
          ),

          // Company
          Container(
            margin: EdgeInsets.fromLTRB(10, 0, 15, 10),
            padding: EdgeInsets.symmetric(vertical: 0, horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Company:',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Batangas State University TNEU Balayan',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink[300],
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
          ),

          // Contact Number
          Container(
            margin: EdgeInsets.fromLTRB(10, 0, 15, 10),
            padding: EdgeInsets.symmetric(vertical: 0, horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Contact Number:',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '09567891011',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink[300],
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.only(top: 30),
              child: Container(
                width: 300,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.logout, color: Colors.red),
                      SizedBox(width: 10),
                      Text(
                        'Logout',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )

        ],
      ),
    );
  }
}


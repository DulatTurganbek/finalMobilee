import 'dart:async';


import 'package:flutter/material.dart';

import 'Animation/animation.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({ Key key }) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final List<List> _settings = [
    ['Main', 'Main', Icons.shopping_cart, Colors.green,],
    ['BAck', 'BAck', Icons.exit_to_app, Colors.black],
  ];

  int activeStatus = 0;

  showBackDealog() {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('BaCk'),
          content: Text('Are you sure ?'),
          actions: <Widget>[
            FlatButton(
              color: Colors.blueAccent,
              child: Text('Cancel', style: TextStyle(color: Colors.white),),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            FlatButton(
              child: Text('BAck'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      }
    );
  }

  @override
  Widget build(BuildContext context) {
      Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text('Profile', style: TextStyle(color: Colors.black),),
        leading: BackButton(color: Colors.black),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20),
            child: Row(
              children: [
                SimpleAnimation(1.2, CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.grey[200],
                  backgroundImage: NetworkImage(
                'http://logobaker.ru/media/uploads/userapi/logos/93/400_300_2732-kofeman.png'),
                )),
                SizedBox(width: 20,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SimpleAnimation(1.2, Text('Coffeman', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)),
                    SizedBox(height: 5,),
                    SimpleAnimation(1.2, Text("Almaty str Abay", style: TextStyle(color: Colors.grey, fontSize: 14),)),
                  ],
                ),
              
              ],
            ),
          ),
        
          Column(
            children: [
              Text(
                "COFFEEMAN",
                style: TextStyle(fontSize: 17),
              ),
              SizedBox(height: 10),
              Text(
                "Hello",
                style: TextStyle(
                  fontSize: 42,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.star, color: Colors.amber),
                  Icon(Icons.star, color: Colors.amber),
                  Icon(Icons.star, color: Colors.amber),
                  Icon(Icons.star, color: Colors.amber),
                  Icon(Icons.star_outline, color: Colors.amber),
                ],
              ),
              SizedBox(height: 10),
              Text(
                " is simply dummy text of the printing and typesetting"
                " industry. Lorem Ipsum has been the industry's standard dummy "
                "text ever since the 1500s, when an unknown printer took a galley"
                " of type and scrambled it to make a type specimen book. It has ",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              SizedBox(height: 20),
             
            ],
          ),
          SimpleAnimation(1, Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text('Account',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              )
            ),
          )),
          SizedBox(height: 10,),
          Container(
            height: 160,
            child: ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: _settings.length,
              itemBuilder: (context, index) {
                return SimpleAnimation((1.0 + index) / 4, settingsOption(_settings[index][0], _settings[index][1], _settings[index][2], _settings[index][3]));
              }
            ),
          ),
        ],
      ),
    );
  }

  settingsOption(String title, String subtitle, IconData icon, Color color) {
    return ListTile(
      onTap: () {
        if (title == 'Back') {
          showBackDealog();
        }
      },
      subtitle: Text(subtitle),
      leading: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: color,
        ),
        child: Icon(icon, color: Colors.white, size: 30,),
      ),
      title: Text(title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
      trailing: Icon(Icons.keyboard_arrow_right, color: Colors.grey.shade400,),
    );
  }
}

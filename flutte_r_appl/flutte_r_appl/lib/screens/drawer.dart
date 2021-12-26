import 'package:flutte_r_appl/screens/main_pages/list_page.dart';
import 'package:flutte_r_appl/screens/profile/profile.dart';
import 'package:flutter/material.dart';

class DrawerAppbar extends StatelessWidget {
  const DrawerAppbar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  'http://logobaker.ru/media/uploads/userapi/logos/93/400_300_2732-kofeman.png'),
            ),
            accountEmail: Text('coffe_man@example.com'),
            accountName: Text(
              'User',
              style: TextStyle(fontSize: 24.0),
            ),
            decoration: BoxDecoration(
              color: Colors.black87,
            ),
          ),
          
       
          ListTile(
            leading: SizedBox(
              height: 60.0,
              width: 60.0, // fixed width and height
              child: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0EfGZrbMTihxKJzUTIj7gzPMfJhCLRAbIFA&usqp=CAU'),
            ),
            title: const Text(
              'Coffes',
              style: TextStyle(fontSize: 20.0),
            ),
            onTap: () {
                Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => ListPage()),
  );
            },
          ),
          SizedBox(height: 33,),
          ListTile(
           leading: SizedBox(
              height: 60.0,
              width: 60.0, // fixed width and height
              child: Image.network(
                  'https://static.wikia.nocookie.net/hello-bob/images/4/4f/Кофеман.png/revision/latest?cb=20181110125306&path-prefix=ru'),
            ),
            title: const Text(
              'Profile',
              style: TextStyle(fontSize: 20.0),
            ),
            onTap: () {
                       Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => ProfilePage()),
  );
            },
          ),
        ],
      ),
    );
  }
}
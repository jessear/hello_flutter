import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text('jesse',style: TextStyle(fontWeight: FontWeight.bold)),
            accountEmail: Text('13262623319@163.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage('http://img2.ph.126.net/GhTvKehSBRoYgoJOGu3ulg==/6630866555073707273.jpg'),
            ),
          ),
//              DrawerHeader(
//                child: Text('header'.toUpperCase()),
//                decoration: BoxDecoration(
//                  color: Colors.grey[100]
//                ),
//              ),
          ListTile(
              title: Text('Message',textAlign: TextAlign.right,),
              trailing: Icon(Icons.message,color: Colors.black12,size: 22.0,),
              onTap: () => Navigator.pop(context)
          ),
          ListTile(
              title: Text('Favorite',textAlign: TextAlign.right,),
              trailing: Icon(Icons.favorite,color: Colors.black12,size: 22.0,),
              onTap: () => Navigator.pop(context)
          ),
          ListTile(
              title: Text('Settings',textAlign: TextAlign.right,),
              trailing: Icon(Icons.settings,color: Colors.black12,size: 22.0,),
              onTap: () => Navigator.pop(context)
          )
        ],
      ),
    );
  }
}





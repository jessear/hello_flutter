import 'package:flutter/material.dart';
import 'listview_demo.dart';
import 'drawer_demo.dart';
import 'bottom_navigation_demo.dart';
import 'basic_demo.dart';

void main() => runApp(App());

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
        splashColor: Colors.white70
      ),
    );
  }
}

class Home extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          centerTitle: true,
//          leading: IconButton(
//              icon: Icon(Icons.menu),
//              tooltip: 'Navigration',
//              onPressed: () => debugPrint('导航')
//          ),
          title: Text('美女'),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.search),
                tooltip: 'Search',
                onPressed: () => debugPrint('搜索')
            )
          ],
          elevation: 0.0,
          bottom: TabBar(
              unselectedLabelColor: Colors.black38,
              indicatorColor: Colors.black54,
//              indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 1.0,
              tabs:<Widget>[
                Tab(icon: Icon(Icons.local_florist)),
                Tab(icon: Icon(Icons.change_history)),
                Tab(icon: Icon(Icons.directions_bike)),
              ]
          ) ,
        ),
//        body: ListViewDemo(),
          body: TabBarView(
              children: <Widget>[
                ListViewDemo(),
                BasicDemo(),
                Icon(Icons.directions_bike,size: 128.0,color: Colors.black12)
          ],
        ),
        drawer:DrawerDemo(),
//        drawer: Container(
//          color: Colors.white,
//          padding: EdgeInsets.all(8.0),
//          child: Column(
//            mainAxisAlignment: MainAxisAlignment.center,
//            children: <Widget>[
//              Text('抽屉item')
//            ],
//          ),
//        ),
      bottomNavigationBar:BottomNavigationBarDemo()
      )
    );
  }
}

class Hello extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
        child:Text(
          '你好',
          textDirection: TextDirection.ltr,
          style: TextStyle(
              fontSize: 40.0,
              fontWeight:FontWeight.bold,
              color: Colors.black
          ),
        )
    );
  }
}


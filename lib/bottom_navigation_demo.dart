import 'package:flutter/material.dart';

class BottomNavigationBarDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _BottomNavigationBarDemoState();
  }
}

class _BottomNavigationBarDemoState extends State<BottomNavigationBarDemo>{
  int _currentIndex = 0;
  void _onTapHandler(int index){
    setState((){
      _currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.black,
        currentIndex: _currentIndex,
        onTap: _onTapHandler,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.explore),
              title: Text('首页')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.history),
              title: Text('历史')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.list),
              title: Text('列表')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('我的')
          )
        ]
    );
  }
}
import 'package:example/fab_bottom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:full_screen_menu/full_screen_menu.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Full screen menu demo')),
      body: Image.asset(
        'assets/google_maps.png',
        width: 700,
        fit: BoxFit.fitWidth,
      ),
      bottomNavigationBar: FABBottomAppBar(
        color: Colors.grey,
        selectedColor: Theme.of(context).accentColor,
        notchedShape: CircularNotchedRectangle(),
        onTabSelected: (index) {},
        items: [
          FABBottomAppBarItem(
              iconData: Icons.format_list_bulleted, text: 'lists'),
          FABBottomAppBarItem(iconData: Icons.people, text: 'people'),
          FABBottomAppBarItem(iconData: Icons.attach_money, text: 'money'),
          FABBottomAppBarItem(iconData: Icons.more_horiz, text: 'dots'),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () => showFullScreenMenu(context),
        child: Icon(Icons.add),
      ),
    );
  }

  void showFullScreenMenu(BuildContext context) {
    FullScreenMenu.show(
      context,
      backgroundColor: Colors.black,
      items: [
        FSMenuItem(
          icon: Icon(Icons.ac_unit, color: Colors.white),
          text: Text('Make colder', style: TextStyle(color: Colors.white)),
          onTap: () {
            print('Made Ukraine colder!');
          },
        ),
        _customButton(),
        FSMenuItem(
          icon: Icon(Icons.wb_sunny, color: Colors.white),
          text: Text('Make hotter', style: TextStyle(color: Colors.white)),
        ),
        FSMenuItem(
          icon: Icon(Icons.flash_on, color: Colors.white),
          text: Text('Lightning', style: TextStyle(color: Colors.white)),
        ),
        FSMenuItem(
          icon: Icon(Icons.add, color: Colors.white),
          text: Text('Add to EU', style: TextStyle(color: Colors.white)),
        ),
      ],
    );
  }

  Widget _customButton() {
    return Column(children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: CircleAvatar(
            radius: 26,
            child: Icon(
              Icons.grain,
              color: Colors.white,
            ),
            backgroundColor: Colors.blueGrey),
      ),
      Text('Give a rain', style: TextStyle(color: Colors.white)),
    ]);
  }
}

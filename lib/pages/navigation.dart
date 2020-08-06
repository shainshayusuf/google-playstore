import 'package:flutter/material.dart';

class NavigationBar extends StatelessWidget {
  final _menutextcolor = TextStyle(
    color: Colors.black,
    fontSize: 14.0,
    fontWeight: FontWeight.w500,
  );
  final _iconcolor = new IconThemeData(
    color: Color(0xff757575),
  );

  @override
  Widget build(BuildContext context) {
    return ListView(
        padding: EdgeInsets.all(0),
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountEmail: Text("shainshayusuf@gmail.com"),
            accountName: Text("Shainsha"),
            currentAccountPicture: Image.asset('assets/images/1.png'),
          ),
          ListTile(
            leading: IconTheme(
              data: _iconcolor,
              child: Icon(Icons.apps),
            ),
            title: Text("My apps & games", style: _menutextcolor),
            selected: true,
            onTap: () {},
          ),
        ]);
  }
}

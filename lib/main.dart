import 'package:flutter/material.dart';
import 'package:flutter_app/pages/apps.dart';
import 'package:flutter_app/pages/navigation.dart';
import 'package:flutter_app/pages/search.dart';

void main(){
  runApp(MaterialApp(
    home: PlayStore(),
    theme: ThemeData(
      primaryColor: Color(0xff01865f),
    ),
    debugShowCheckedModeBanner: false,
  ));
}

class PlayStore extends StatefulWidget {
  @override
  _PlayStoreState createState() => _PlayStoreState();
}

class _PlayStoreState extends State<PlayStore> with SingleTickerProviderStateMixin{
  TabController _googlePlayStoreController;

  @override
  void initState() {
    super.initState();
    _googlePlayStoreController = new TabController( vsync: this, initialIndex: 0, length: 5 );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:Text("Google Play"),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: (){
                showSearch( context: context, delegate:GooglePlaySearch() );
              },
            ),
            Icon(Icons.keyboard_voice),
            Padding( padding: EdgeInsets.only(right: 20.0), ),
          ],
          bottom: new TabBar(
            controller: _googlePlayStoreController,

            indicatorColor: Colors.white,
            isScrollable: true,
            tabs: <Widget>[
              new Tab(text: "HOME"),
              new Tab(text: "GAMES"),
              new Tab(text: "MOVIES"),
              new Tab(text: "BOOKS"),
              new Tab(text: "MUSIC"),
            ],
          ),
        ),
      body: TabBarView(
        controller: _googlePlayStoreController,
        children: [
          new AppView(),
          new AppView(),
          new AppView(),
          new AppView(),
          new AppView(),

        ],
      ),
      drawer: Drawer(
        child: NavigationBar(),
      ),
    );
  }
}

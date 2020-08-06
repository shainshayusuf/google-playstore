import 'package:flutter/material.dart';
import 'package:flutter_app/pages/appDetails.dart';

void main(){
  runApp(
  MaterialApp(
    home: AppView(),
  )
  );
}

class AppView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      decoration: new BoxDecoration(boxShadow: [
        new BoxShadow(
          color: Color(0xffffffff),
          blurRadius: 1.0,
          offset: new Offset(1.0, 1.0),
        ),
      ]),
      child: Column(


        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left:10.0, top:10.0),
            child: Text("Welcome to Google Play", style: TextStyle(
                color:Color(0xff616161),
                fontSize:16.0
            ),),
          ),
          Padding(
            padding: const EdgeInsets.only(left:10.0, top:3.0),
            child: Text("Browse our most popular apps", style: TextStyle(
                color:Color(0xff616161),
                fontSize:12.0
            ),),
          ),
          Expanded(

            child:ListView(
             shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                AppDetails('assets/images/googlesheets1.png','Google sheets','20MB'),
                AppDetails('assets/images/zomato.png','Zomato','30MB'),
                AppDetails('assets/images/gdrive.png','Google Drive','25MB'),

              ],
            ),
          ),
        ],
      ),
    );

  }
}

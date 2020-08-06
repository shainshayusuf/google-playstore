import 'package:flutter/material.dart';

class AppDetails extends StatelessWidget {
  final String appLogo;
  final String appName;
  final String appSize;

  AppDetails(@required this.appLogo,@required  this.appName,@required this.appSize);

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailScreen(appLogo,appName,appSize),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(top:15.00, bottom: 15.00, left: 8, right: 4),
        child: Container(
          height: 200,
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Image(
                image:AssetImage(appLogo),
                width: 80.0,
                height: 80.0,
              ),
              Padding(
                padding: EdgeInsets.all(2.0),
              ),
              Text(appName, style: TextStyle(
                color:Color(0xff202124),
              ),),
              Padding(
                padding: EdgeInsets.all(2.0),
              ),
              Text(appSize,  style: TextStyle(
                  color:Color(0xff5f6368),
                  fontSize:12.0
              ),),
            ],
          ),
        ),
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  final String appLogo;
  final String appName;
  final String appSize;
  DetailScreen(@required this.appLogo,@required  this.appName,@required this.appSize);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appName),
      ),
      body: Stack(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  width: 100,
                  height: 100,
                  child: Image(image: AssetImage(appLogo),),
                ),
              ),
              Text(appName ,style: TextStyle(
                fontSize: 15
              ),),
              SizedBox(width: 20,),
              Text('\u2022 ' + appSize)
            ],
          ),
          Align(
    alignment: Alignment(-0.3,-0.5),
            child: Container(
              width: 330,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),

                ),
              onPressed: (){
                },
                child: new Text("Install"),
                color: new Color(0xff2f9651),
              ),
            ),
          )
        ],
      )
    );
  }
}

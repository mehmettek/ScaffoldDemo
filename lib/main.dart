import 'package:flutter/material.dart';
import 'package:scaffold_demo/page2.dart';
 
void main() => runApp(MaterialApp(
    initialRoute: "/",
    routes: {
        "/":(context) =>MyApp(),
        "/page2": (context) => PageTwo(),
    },
  ));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  _alertShow(String value){
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context){
        return AlertDialog(
        title: Text(value),
        actions: <Widget>[
          FlatButton(
            child: Text('Close'),
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
    return Scaffold(
appBar: AppBar(title: Text("Scaffold Demo",
style: TextStyle(fontSize: 17.0),
),
actions: <Widget>[
  IconButton(icon: Icon(Icons.add_alert),
  onPressed: () =>_alertShow("Scaffold Demo"),),
  IconButton(icon: Icon(Icons.battery_alert),
  onPressed: () =>_alertShow("Scaffold Demo"),),
    IconButton(icon: Icon(Icons.sim_card_alert),
  onPressed: () =>_alertShow("Scaffold Demo"),),
],
),
body: Container(
 child: new Container(
      color: Colors.brown,
      alignment: Alignment.center,
      child: new Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(20.0),  
        margin: EdgeInsets.all(20.0),  
        color: Colors.red,
        child: new Container(
          padding: EdgeInsets.all(20.0),
          alignment: Alignment.center,
          color: Colors.yellow,
          child: new Container(
            padding: EdgeInsets.all(20.0),
          alignment: Alignment.center,
          color: Colors.grey,
          child: new Container(
            padding: EdgeInsets.all(20.0),
          alignment: Alignment.center,
          color: Colors.grey,
          child: new Container(
            padding: EdgeInsets.all(20.0),
          alignment: Alignment.center,
          color: Colors.red,
          child: new Container(
            padding: EdgeInsets.all(20.0),
          alignment: Alignment.center,
          color: Colors.yellow,
          child: RaisedButton(
            onPressed: () => Navigator.pushNamed(context, "/page2",),
          child: Text("Page 2 ",style:TextStyle(color: Colors.black)),
          ),
          ),
          ),
          ),
          ),
        ),
),

    ),
),
  bottomNavigationBar: new BottomNavigationBar(
    items: [
      new BottomNavigationBarItem(
        icon: new Icon(Icons.cloud_circle),
        title: new Text("Cloud")
      ),
new BottomNavigationBarItem(
        icon: new Icon(Icons.computer),
        title: new Text("Computer")
      ),
        
        new BottomNavigationBarItem(
        icon: new Icon(Icons.create),
        title: new Text("Create"),
        backgroundColor: Colors.red, 
      
      ),
    ],
    onTap: (int index) {

      switch (index) {
        case 0: _alertShow("Cloud");
          break;
        case 1: _alertShow("Computer");
          break;
        case 2: _alertShow("Create");
          break;
      default: _alertShow("Error");
          break;
      }
      
      }

  ),
drawer: new Drawer(
    child: ListTile(
      leading: Icon(Icons.close,size: 40.0,),
      title: Text('Close',style: TextStyle(fontSize: 40.0,color: Colors.deepOrange.shade900),),
      onTap: () {
        Navigator.pop(context); //kapatma
 
      },

    ),

  ),
    );
  }
}
 

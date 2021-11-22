import 'package:flutter/material.dart';
import 'package:flutter_progmob_2021/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DashboardDosen extends StatefulWidget {
  DashboardDosen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _DashboardDosenState createState() => _DashboardDosenState();
}

class _DashboardDosenState extends State<DashboardDosen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: (){},
          ),
        ],
      ),
      body: Container(
        child: GestureDetector(
          onLongPress: (){

          },
          child: Card(
          child: Column(
          mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.person),
                title: Text("Ester Siwu"),
                subtitle: Text("085696719683 - estergloryas@gmail.com"),
                onLongPress: (){
                  showDialog(context: null,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          content: Column(
                            children: <Widget>[
                              FlatButton(
                                child: Text("Edit"),
                                onPressed: (){
                                  Navigator.pop(context);
                                },
                              ),
                              FlatButton(
                                  child: Text("Delete"),
                                  onPressed: (){
                                    Navigator.pop(context);
                                  },
                              ),
                            ],
                          ),
                        );
                      });
                },
              )
            ],
          ),
        ),
          )

      )
    );
  }
}

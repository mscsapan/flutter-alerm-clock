import 'package:flutter/material.dart';
import 'welcome_page.dart';
import 'screen_animation.dart';

class TaskHome extends StatefulWidget {
  @override
  _TaskHomeState createState() => _TaskHomeState();
}

class _TaskHomeState extends State<TaskHome> {
  @override
  Widget build(BuildContext context) {
    bool remindMe = true;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Clock Application"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: new Container(
            width: double.infinity,
            padding: EdgeInsets.all(32),
            child: new Column(
              children: <Widget>[
                new Text(
                  "Create New Task",
                  style: TextStyle(
                      height: 1.2,
                      fontSize: 50,
                      fontWeight: FontWeight.w700,
                      color: Colors.grey[800]),
                ),
                new TextField(
                  style: TextStyle(
                    fontSize: 24,
                  ),
                  decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.blueGrey[100]),
                      ),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.blueGrey[100])),
                      hintText: "Task Name",
                      hintStyle:
                          TextStyle(fontSize: 24, color: Colors.grey[800])),
                ),
                new Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: new Row(
                    children: <Widget>[
                      Icon(
                        Icons.today,
                        color: Colors.redAccent,
                      ),
                      SizedBox(
                        width: 24,
                        height: 10,
                      ),
                      new Text(
                        "Monday 1 June, 2020",
                        style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w700,
                            color: Colors.grey[800]),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 14,
                ),
                new Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: new Row(
                    children: <Widget>[
                      Icon(
                        Icons.alarm,
                        color: Colors.redAccent,
                      ),
                      SizedBox(
                        width: 24,
                        height: 10,
                      ),
                      new Text(
                        "1.00 PM - 4.00 PM",
                        style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w700,
                            color: Colors.grey[700]),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 14,
                ),
                new Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color.fromRGBO(240, 245, 250, 1),
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.work,
                        color: Colors.redAccent,
                      ),
                      SizedBox(
                        width: 24,
                      ),
                      new Text(
                        "Work",
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w700,
                          color: Colors.grey[700],
                        ),
                      ),
                      Spacer(),
                      IconButton(
                        icon: Icon(Icons.chevron_right),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                new Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color.fromRGBO(245, 235, 255, 1),
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: new Row(
                    children: <Widget>[
                      Icon(
                        Icons.alarm_on,
                        color: Colors.purpleAccent[100],
                      ),
                      SizedBox(
                        width: 24,
                      ),
                      new Text(
                        "Reminder",
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w700,
                          color: Colors.grey[700],
                        ),
                      ),
                      Spacer(),
                      Switch(
                          value: remindMe,
                          activeColor: Colors.green[700],
                          inactiveThumbColor: Colors.red,
                          //activeTrackColor: Colors.amber,
                          onChanged: (value) {
                            setState(() {
                              remindMe = value;
                            });
                          })
                    ],
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                new Container(
                  width: double.infinity,
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    padding: EdgeInsets.symmetric(vertical: 16),
                    child: new Text(
                      "CREATE TASK",
                      style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                    color: Colors.black,
                    onPressed: () {
                      setState(() {
                        Navigator.push(
                            context, ScreenAnimation(widget: Welcome()));
                      });
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

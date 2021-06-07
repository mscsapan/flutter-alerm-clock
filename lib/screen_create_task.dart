import 'package:alermclock/screen_animation.dart';
import 'package:alermclock/screen_home_task.dart';
import 'package:alermclock/welcome_page.dart';
import 'package:flutter/material.dart';
import 'screen_animation.dart';

class CreateTaskHome extends StatefulWidget {
  @override
  _CreateTaskHomeState createState() => _CreateTaskHomeState();
}

class _CreateTaskHomeState extends State<CreateTaskHome> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: new Container(
          width: double.infinity,
          child: new Row(
            children: <Widget>[
              new Expanded(
                  child: Container(
                    child: new Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        new Text(
                          "Task List",
                          style: TextStyle(
                            letterSpacing: 1,
                            fontSize: 18,
                            color: Colors.blueGrey[200],
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 50, top: 1, right: 50, bottom: 1),
                          child: Divider(
                            height: 1,
                            thickness: 2,
                            color: Colors.red,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        new Container(
                          child: new Row(
                            children: <Widget>[
                              new Text(
                                "Work",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 40,
                                  height: 1.2,
                                  color: Colors.grey[800],
                                ),
                              ),
                              Spacer(),
                              IconButton(
                                icon: Icon(
                                  Icons.edit,
                                  color: Colors.grey[600],
                                ),
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        //ListView
                        new Expanded(
                          child: ListView.separated(
                            itemBuilder: (context, index) {
                              return Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                      color: Colors.blueGrey[100]),
                                  color: index == 1
                                      ? Colors.deepPurple[400]
                                      : Colors.transparent,
                                ),
                                padding: const EdgeInsets.all(12),
                                child: new Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        index == 1 ?
                                        new Expanded(
                                          child: new Text(
                                            "Make your own Schedule as your choice",
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: index == 1
                                                  ? Colors.white
                                                  : Colors.white70,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ) :
                                        new Expanded(
                                          child: new Text(
                                            "Make your own Schedule as your choice",
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                        index == 1
                                            ? Icon(
                                          Icons.check_circle,
                                          color: Colors.white70,
                                        )
                                            : Container(),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    new Row(
                                      children: <Widget>[
                                        index == 1
                                            ? new Text(
                                          "Nov 28, 2019",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12,
                                              color: index == 1
                                                  ? Colors.white
                                                  : Colors.white70),
                                        )
                                            : new Text(
                                          "Nov 28, 2019",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12,
                                          ),
                                        ),
                                        Spacer(),
                                        index == 1
                                            ? new Text(
                                          "Completed",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              color: index == 1
                                                  ? Colors.white
                                                  : Colors.white70),
                                        )
                                            : new Text(
                                          "1.00 - 3.00",
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              );
                            },
                            separatorBuilder: (context, index) =>
                                Divider(
                                  height: 16,
                                  color: Colors.transparent,
                                ),
                            itemCount: 6,
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        //Button
                        new Container(
                          width: double.infinity,
                          child: new FlatButton(
                              onPressed: () {
                                Navigator.push(context,
                                  ScreenAnimation(widget: TaskHome())

                                );
                              },
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              color: Colors.green[400],
                              child: Text(
                                "Create New Task",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white70,
                                    fontSize: 20.0),
                              ),
                              padding: const EdgeInsets.symmetric(
                                  vertical: 14)),
                        ),
                      ],
                    ),
                    padding: EdgeInsets.all(32),
                  )),
              new Container(
                height: double.infinity,
                width: MediaQuery
                    .of(context)
                    .size
                    .width * 0.22,
                color: Colors.black,
                padding:
                const EdgeInsets.symmetric(horizontal: 12, vertical: 32),
                child: new Column(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        Icons.menu,
                        color: Colors.white,
                      ),
                    ),
                    Spacer(),
                    new Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.orangeAccent),
                      padding: EdgeInsets.all(16),
                      child: Text(
                        "W",
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          color: Colors.white,
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    new Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.grey[800],
                      ),
                      padding: EdgeInsets.all(16),
                      child: Text(
                        "T",
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          color: Colors.white,
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    new Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.grey[800],
                      ),
                      padding: EdgeInsets.all(16),
                      child: Text(
                        "F",
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          color: Colors.white,
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    new Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.grey[800],
                      ),
                      padding: EdgeInsets.all(16),
                      child: Text(
                        "S",
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          color: Colors.white,
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    new Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.grey[800],
                      ),
                      padding: EdgeInsets.all(16),
                      child: Text(
                        "M",
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          color: Colors.white,
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                    Spacer(),
                    new IconButton(
                        icon: Icon(
                          Icons.calendar_today,
                          color: Colors.grey,
                        ),
                        onPressed: () {})
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

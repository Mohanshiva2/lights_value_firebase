import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late DatabaseReference _databaseReference;

  @override
  void initState() {
    _databaseReference = FirebaseDatabase.instance.reference();
    super.initState();
  }

  bool lightvalue = false;
  bool lightvalue1 = false;
  bool lightvalue2 = false;
  bool lightvalue3 = false;
  bool lightvalue4 = false;
  bool lightvalue5 = false;
  bool lightvalue6 = false;
  bool lightvalue7 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.cyan, Colors.black],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(30, 100, 30, 0),
                  padding: EdgeInsets.all(50),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.blueGrey,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black54,
                          offset: Offset(5.0, 5.0),
                          blurRadius: 5.0,
                        ),
                        BoxShadow(
                          color: Colors.black,
                          offset: Offset(-5, -5),
                          blurRadius: 5.0,
                        )
                      ]),

                    child: Column(

                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(
                                  () {
                                    _databaseReference.child('light').update({
                                      'bulb_button': lightvalue = !lightvalue
                                    });
                                  },
                                );
                              },
                              child: Container(
                                padding: EdgeInsets.all(30),
                                width: 280,
                                height: 100,
                                decoration: BoxDecoration(
                                  color: lightvalue ? Colors.orange : Colors.cyan,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Center(
                                      child: Text(
                                        'bulb_button',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(
                                  () {
                                    _databaseReference.child('light').update({
                                      'tubelight_button1': lightvalue1 =
                                          !lightvalue1
                                    });
                                  },
                                );
                              },
                              child: Container(
                                padding: EdgeInsets.all(30),
                                width: 280,
                                height: 100,
                                decoration: BoxDecoration(
                                  color:
                                      lightvalue1 ? Colors.orange : Colors.cyan,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Column(
                                  children:  [
                                    Center(
                                      child: Text(
                                        'tubelightbutton_1',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(
                                  () {
                                    _databaseReference.child('light').update({
                                      'tubelightbutton_2': lightvalue2 =
                                          !lightvalue2
                                    });
                                  },
                                );
                              },
                              child: Container(
                                padding: EdgeInsets.all(30),
                                width: 280,
                                height: 100,
                                decoration: BoxDecoration(
                                  color:
                                      lightvalue2 ? Colors.orange : Colors.cyan,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children:  [
                                    Center(
                                      child: Text(
                                        'tubelightbutton_2',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(
                                  () {
                                    _databaseReference.child('light').update({
                                      'tubelightbutton_3': lightvalue3 =
                                          !lightvalue3
                                    });
                                  },
                                );
                              },
                              child: Container(
                                padding: EdgeInsets.all(30),
                                width: 280,
                                height: 100,
                                decoration: BoxDecoration(
                                  color:
                                      lightvalue3 ? Colors.orange : Colors.cyan,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Column(
                                  children:  [
                                    Center(
                                      child: Text(
                                        'tubelightbutton_3',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(
                                  () {
                                    _databaseReference.child('light').update({
                                      'tubelightbutton_4': lightvalue4 =
                                          !lightvalue4
                                    });
                                  },
                                );
                              },
                              child: Container(
                                padding: EdgeInsets.all(30),
                                width: 280,
                                height: 100,
                                decoration: BoxDecoration(
                                  color:
                                      lightvalue4 ? Colors.orange : Colors.cyan,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Column(
                                  children:  [
                                    Center(
                                      child: Text(
                                        'tubelightbutton_4',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(
                                  () {
                                    _databaseReference.child('light').update({
                                      'tubelightbutton_5': lightvalue5 =
                                          !lightvalue5
                                    });
                                  },
                                );
                              },
                              child: Container(
                                padding: EdgeInsets.all(30),
                                width: 280,
                                height: 100,
                                decoration: BoxDecoration(
                                  color:
                                      lightvalue5 ? Colors.orange : Colors.cyan,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Column(
                                  children:  [
                                    Center(
                                      child: Text(
                                        'tubelightbutton_5',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(
                                  () {
                                    _databaseReference.child('light').update({
                                      'tubelightbutton_6': lightvalue6 =
                                          !lightvalue6
                                    });
                                  },
                                );
                              },
                              child: Container(
                                padding: EdgeInsets.all(30),
                                width: 280,
                                height: 100,
                                decoration: BoxDecoration(
                                  color:
                                      lightvalue6 ? Colors.orange : Colors.cyan,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Column(
                                  children:  [
                                    Center(
                                      child: Text(
                                        'tubelightbutton_6',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(
                                  () {
                                    _databaseReference.child('light').update({
                                      'tubelightbutton_7': lightvalue7 =
                                          !lightvalue7
                                    });
                                  },
                                );
                              },
                              child: Container(
                                padding: EdgeInsets.all(30),
                                width: 280,
                                height: 100,
                                decoration: BoxDecoration(
                                  color:
                                      lightvalue7 ? Colors.orange : Colors.cyan,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Column(
                                  children:  [
                                    Center(
                                      child: Text(
                                        'tubelightbutton_7',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

              ],
            )
          ],
        ),
      ),
    );
  }
}

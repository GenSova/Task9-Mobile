import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(title: 'Weather Forecast'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController _searchcontroller = TextEditingController();
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    _searchcontroller.text = "Enter City Name";
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.topCenter,
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  controller: _searchcontroller,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search, color: Colors.white),
                  ),
                ),
              ),
            Container(
              margin: const EdgeInsets.only(top: 35.0),
              alignment: Alignment.topCenter,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                Text(
                'Murmansk Oblast, RU',
                style: TextStyle(fontSize: 30.0, color: Colors.white, fontWeight: FontWeight.w300),
              ),
                  SizedBox(height: 10),
                Text(
                  'Friday, Mar 20, 2020',
                  style: TextStyle(fontSize: 16.0, color: Colors.white, fontWeight: FontWeight.w300),
                  ),
            ]),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.only(top: 40, left: 20),
                  child: Icon(
                    Icons.wb_sunny,
                    size: 100.0,
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30, right: 20),
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        Text(
                          '14 \u0000F',
                          style: TextStyle(fontSize: 60.0, color: Colors.white, fontWeight: FontWeight.w300),
                        ),
                        Text(
                          'SUNNY',
                          style: TextStyle(fontSize: 20.0, color: Colors.white, fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        Icon(
                          Icons.ac_unit_rounded,
                          size: 35.0,
                          color: Colors.white,
                        ),
                        SizedBox(height: 5),
                        Text(
                          '5',
                          style: TextStyle(fontSize: 17.0, color: Colors.white, fontWeight: FontWeight.w400),
                        ),
                        Text(
                          'km/hr',
                          style: TextStyle(fontSize: 15.0, color: Colors.white, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        Icon(
                          Icons.ac_unit_rounded,
                          size: 35.0,
                          color: Colors.white,
                        ),
                        SizedBox(height: 5),
                        Text(
                          '3',
                          style: TextStyle(fontSize: 17.0, color: Colors.white, fontWeight: FontWeight.w400),
                        ),
                        Text(
                          '%',
                          style: TextStyle(fontSize: 15.0, color: Colors.white, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        Icon(
                          Icons.ac_unit_rounded,
                          size: 35.0,
                          color: Colors.white,
                        ),
                        SizedBox(height: 5),
                        Text(
                          '20',
                          style: TextStyle(fontSize: 17.0, color: Colors.white, fontWeight: FontWeight.w400),
                        ),
                        Text(
                          '%',
                          style: TextStyle(fontSize: 15.0, color: Colors.white, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Text('7-DAY WEATHER FORECAST', style: TextStyle(
                fontSize: 22.0,
                color: Colors.white,
                fontWeight: FontWeight.w400
              ),),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              height: 120,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    width: 160,
                    child: Card(
                      color: Colors.white12,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Column(
                          children: <Widget>[
                            Text(
                              'FRIDAY',
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(top: 15),
                                  child: Text(
                                    '6°F',
                                    style: TextStyle(
                                      fontSize: 30,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 15),
                                  child: Icon(
                                    Icons.wb_sunny,
                                    size: 40,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 160,
                    child: Card(
                      color: Colors.white12,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Column(
                          children: <Widget>[
                            Text(
                              'SATURDAY',
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(top: 15),
                                  child: Text(
                                    '5°F',
                                    style: TextStyle(
                                      fontSize: 30,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 15),
                                  child: Icon(
                                    Icons.wb_sunny,
                                    size: 40,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 160,
                    child: Card(
                      color: Colors.white12,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Column(
                          children: <Widget>[
                            Text(
                              'SUNDAY',
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(top: 15),
                                  child: Text(
                                    '3°F',
                                    style: TextStyle(
                                      fontSize: 30,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 15),
                                  child: Icon(
                                    Icons.wb_sunny,
                                    size: 40,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 160,
                    child: Card(
                      color: Colors.white12,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Column(
                          children: <Widget>[
                            Text(
                              'MONDAY',
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(top: 15),
                                  child: Text(
                                    '10°F',
                                    style: TextStyle(
                                      fontSize: 30,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 15),
                                  child: Icon(
                                    Icons.wb_sunny,
                                    size: 40,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

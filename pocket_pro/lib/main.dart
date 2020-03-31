import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
  int _selectedIndex = 0;
  bool _menuOpened = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(width: 10),
                IconButton(
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    icon: _menuOpened == true
                        ? Icon(
                            Icons.menu,
                          )
                        : Icon(
                            Icons.dehaze,
                            color: Colors.indigo[600],
                          ),
                    iconSize: 40,
                    color: Colors.grey[500],
                    onPressed: () {
                      setState(() {
                        _menuOpened = !_menuOpened;
                      });
                    }),
                Spacer(),
                CircleAvatar(
                  backgroundImage: AssetImage('images/selfie.jpg'),
                  backgroundColor: Colors.transparent,
                  radius: 35,
                ),
                SizedBox(width: 10),
              ],
            ),
            SizedBox(height: 10),
            RichText(
              text: TextSpan(
                  text: "Hi ",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 40,
                    fontFamily: 'Nunito',
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: "Adam!",
                      style: TextStyle(
                        color: Colors.indigo[900],
                        fontFamily: 'Nunito',
                      ),
                    )
                  ]),
            ),
            SizedBox(height: 25),
            Text(
              'Find the best professionals today.',
              style: TextStyle(
                color: Colors.grey[700],
                fontSize: 20,
                fontFamily: 'Nunito',
              ),
            ),
            SizedBox(height: 50),
            Container(
              color: Colors.transparent,
              width: 350,
              child: TextFormField(
                textAlign: TextAlign.center,
                cursorColor: Colors.grey,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Colors.grey, width: 2.0),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Colors.transparent, width: 2.0),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  filled: true,
                  hintText: "What are you looking for?",
                  hintStyle:
                      TextStyle(color: Colors.grey[400], fontFamily: 'Nunito'),
                ),
              ),
            ),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      height: 195,
                      width: 175,
                      decoration: BoxDecoration(
                          color: Colors.orange[200],
                          borderRadius: BorderRadius.circular(35)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          SizedBox(height: 10),
                          Text(
                            'Training',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontFamily: 'Nunito'),
                          ),
                          CircleAvatar(
                            backgroundImage: AssetImage('images/avatar4.png'),
                            backgroundColor: Colors.transparent,
                            radius: 75,
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      height: 195,
                      width: 175,
                      decoration: BoxDecoration(
                          color: Colors.teal[200],
                          borderRadius: BorderRadius.circular(35)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          SizedBox(height: 10),
                          Text(
                            'Consulting',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontFamily: 'Nunito'),
                          ),
                          CircleAvatar(
                            backgroundImage: AssetImage('images/avatar3.png'),
                            backgroundColor: Colors.transparent,
                            radius: 75,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      height: 195,
                      width: 175,
                      decoration: BoxDecoration(
                          color: Colors.indigo[200],
                          borderRadius: BorderRadius.circular(35)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          SizedBox(height: 10),
                          Text(
                            'Learning',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontFamily: 'Nunito'),
                          ),
                          CircleAvatar(
                            backgroundImage: AssetImage('images/avatar2.png'),
                            backgroundColor: Colors.transparent,
                            radius: 75,
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      height: 195,
                      width: 175,
                      decoration: BoxDecoration(
                          color: Colors.green[100],
                          borderRadius: BorderRadius.circular(35)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          SizedBox(height: 10),
                          Text(
                            'Hiring',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontFamily: 'Nunito'),
                          ),
                          CircleAvatar(
                            backgroundImage: AssetImage('images/avatar1.png'),
                            backgroundColor: Colors.transparent,
                            radius: 75,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.indigo[600],
        unselectedItemColor: Colors.grey[500],
        currentIndex: _selectedIndex,
        backgroundColor: Colors.grey[200],
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            title: Text(""),
            icon: Icon(
              Icons.home,
              size: 40,
            ),
          ),
          BottomNavigationBarItem(
            title: Text(""),
            icon: Icon(
              Icons.search,
              size: 40,
            ),
          ),
          BottomNavigationBarItem(
            title: Text(""),
            icon: Icon(
              Icons.message,
              size: 40,
            ),
          )
        ],
      ),
    );
  }
}

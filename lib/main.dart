import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.teal,
          padding: EdgeInsets.all(24.0),
          constraints: BoxConstraints.expand(),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ClipRRect(
                    borderRadius: BorderRadius.circular(80.0),
                    child: Container(
                      constraints:
                          BoxConstraints.expand(width: 160.0, height: 160.0),
                      child: Image.network(
                          'https://avatars3.githubusercontent.com/u/2449572?s=400&u=e54a9086489ee6bdacb6345d255e64093b71bd1b&v=4'),
                    )),
                SizedBox(
                  height: 16.0,
                ),
                Text(
                  'Marco Leonardini',
                  style: TextStyle(
                    fontSize: 28.0,
                    color: Colors.white,
                    fontFamily: 'oxanium',
                  ),
                ),
                SizedBox(
                  height: 16.0,
                ),
                Text(
                  'Flutter Dev',
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                ),
                SizedBox(
                  height: 16.0,
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 3,
                  child: Divider(
                    color: Colors.white,
                    thickness: 1,
                  ),
                ),
                SizedBox(
                  height: 16.0,
                ),
                Card(
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.teal,
                    ),
                    title: Text(
                      '+591-72540680',
                      style: TextStyle(
                        color: Colors.teal,
                      ),
                    ),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(
                      Icons.mail,
                      color: Colors.teal,
                    ),
                    title: Text(
                      'marco.ruben.leonardini\n@gmail.com',
                      style: TextStyle(
                        color: Colors.teal,
                      ),
                    ),
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

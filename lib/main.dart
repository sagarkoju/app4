import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Message Card App',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController controller = TextEditingController();
  String message = "";
  Color themeColor = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: themeColor,
        title: Text("Message Card App"),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(
              height: 260.0,
              color: themeColor,
              child: Center(
                child: Text(
                  message,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              controller: controller,
              maxLength: 30,
              onChanged: (String newValue) {
                // print(newValue);
                setState(() {
                  message = newValue;
                });
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 2.0,
                    color: themeColor,
                  ),
                ),
                prefixIcon: Icon(
                  Icons.edit,
                  color: themeColor,
                ),
                hintText: "Your message",
                helperText: "You can write your message here",
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: RaisedButton(
              onPressed: () {
                controller.clear();
              },
              color: themeColor,
              child: Text(
                "Clear the text",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Card(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      setState(() {
                        themeColor = Colors.red;
                      });
                    },
                    child: CircleAvatar(
                      backgroundColor: Colors.red,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        themeColor = Colors.blue;
                      });
                    },
                    child: CircleAvatar(
                      backgroundColor: Colors.blue,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        themeColor = Colors.green;
                      });
                    },
                    child: CircleAvatar(
                      backgroundColor: Colors.green,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        themeColor = Colors.orange;
                      });
                    },
                    child: CircleAvatar(
                      backgroundColor: Colors.orange,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}


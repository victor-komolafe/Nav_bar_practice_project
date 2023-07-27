import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projectone/nav_bar.dart';

void main() => runApp(MaterialApp(
      // theme: ThemeData(
      //   primaryColor: Colors.black,
      // ),
      home: NinjaCard(),
    ));

class NinjaCard extends StatefulWidget {
  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int ninjaLevel = 0;

  final pages = [
    Center(child: Text('Dashboard')),
    Center(child: Text('Product')),
    Center(child: Text('Client')),
    Center(child: Text('Messages')),
    Center(child: Text('Database')),
    Center(child: Text('Notifications')),
    Center(child: Text('Settings')),
  ];
  @override
  Widget build(BuildContext content) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(42, 45, 55, 60),
      drawer: const navBar(),

      appBar: AppBar(
        title: Text('Staff User ID',
            style: GoogleFonts.poppins(
              color: Colors.white,
            )),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(42, 45, 55, 60),
        elevation: 0.0,
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     setState(() {
      //       ninjaLevel += 1;
      //     });
      //   },
      //   child: Icon(Icons.add),
      //   backgroundColor: Colors.grey[850],
      // ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/avatar.jpg'),
                radius: 40.0,
              ),
            ),
            Divider(
                height: 60.0,
                color: Colors.grey[
                    800]), //creates a line to divide avatar from content where the space around the line(inclusive) is 60.0

            Text(
              'Staff Name',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
                height:
                    10.0), //used to create spacing after a widget (between widgets)
            Text('Mr John',
                style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                )),
            SizedBox(height: 30.0),
            Text(
              'CURRENT RANK',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
                height:
                    10.0), //used to create spacing after a widget (between widgets)
            Text(
                //'$ninjaLevel', //stores variable value
                '7',
                style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                )),
            SizedBox(height: 30.0),
          ],
        ),
      ),
    );
  }
}

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  //state object created by stateful widget
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

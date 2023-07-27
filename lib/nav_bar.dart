// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projectone/my_flutter_app_icons.dart';
import 'package:projectone/defaults.dart';

class navBar extends StatefulWidget {
  const navBar({super.key});

  @override
  State<navBar> createState() => _navBarState();
}

class _navBarState extends State<navBar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      shadowColor: null,
      backgroundColor: Defaults.navItemColor,
      elevation: null,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 160.0,
            child: DrawerHeader(
                padding: EdgeInsets.zero,
                decoration: BoxDecoration(
                  //   image: const DecorationImage(
                  //     image: AssetImage('assets/avatar.jpg'),
                  //     fit: BoxFit.fill,
                  //   ),
                  //   color: Colors.blue,
                  //
                  color: Color.fromRGBO(42, 45, 55, 1.0),
                ),
                child: Container(
                  padding: EdgeInsets.zero,
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 10),
                      Row(
                        //Wrap(),
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.zero,
                            margin: EdgeInsets.fromLTRB(35, 0, 11.8, 0),
                            child: Icon(Icons.business_center,
                                size: 40,
                                color: const Color.fromRGBO(127, 87, 241, 1)),
                          ),
                          Text('Business Hub',
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 20,
                                letterSpacing: 0.1,
                              )),
                        ],
                      ),
                      const SizedBox(height: 40),
                      Row(
                        //Wrap(),
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,

                        children: [
                          Container(
                            padding: EdgeInsets.zero,
                            margin: EdgeInsets.fromLTRB(30, 0, 8, 0),
                            child: CircleAvatar(
                              backgroundImage: AssetImage('assets/vicpic.jpg'),
                              radius: 14,
                            ),
                          ),
                          Text('Victor Komolafe',
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.normal,
                                color: Colors.white,
                                fontSize: 16,
                                letterSpacing: 0.1,
                              )),
                          Expanded(
                            child: Container(
                                margin: EdgeInsets.only(left: 40.0),
                                child: Icon(Icons.arrow_forward,
                                    color: Colors.white)),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Divider(
                        // height: 24.33,
                        height: 0.0,
                        color: Colors.white,
                        thickness: 0.7,
                      ),
                    ],
                  ),
                )),
          ),
          Expanded(
              child: ListView(padding: EdgeInsets.zero, children: [
            ListTile(
                contentPadding: EdgeInsets.fromLTRB(23, 0, 20, 0),
                minVerticalPadding: 0,
                title: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.grey[400],
                        size: 30,
                      ),
                      labelText: 'Search',
                      contentPadding: EdgeInsets.all(4),
                      border: OutlineInputBorder(
                          // borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(8.0)),
                    ),
                    style: TextStyle(fontSize: 14))),

            // shape: ShapeBorder,

            // SizedBox(
            //   height: 5,
            // ),
            ListTile(
              minVerticalPadding: 0.0,
              minLeadingWidth: 10,
              contentPadding: EdgeInsets.only(left: 28),
              leading: Icon(
                MyFlutterApp.grid,
                color: Colors.grey,
              ),
              title: Text(
                "Favourites",
                style: Defaults.fontPops,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            ListTile(
              minLeadingWidth: 10,
              contentPadding: EdgeInsets.only(left: 28),
              leading: Icon(
                MyFlutterApp.package,
                color: Colors.grey,
              ),
              title: Text(
                "Products",
                style: Defaults.fontPops,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            ListTile(
              minLeadingWidth: 10,
              contentPadding: EdgeInsets.only(left: 28),
              leading: Icon(
                MyFlutterApp.users,
                color: Colors.grey,
              ),
              title: Text(
                "Clients",
                style: Defaults.fontPops,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            ListTile(
              minLeadingWidth: 10,
              contentPadding: EdgeInsets.only(left: 28),
              leading: Icon(
                MyFlutterApp.message_square,
                color: Colors.grey,
              ),
              title: Text(
                "Messages",
                style: Defaults.fontPops,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            ListTile(
              minLeadingWidth: 10,
              contentPadding: EdgeInsets.only(left: 28),
              leading: Icon(
                MyFlutterApp.database,
                color: Colors.grey,
              ),
              title: Text(
                "Database",
                style: Defaults.fontPops,
              ),
            ),
            SizedBox(
              height: 5,
            ),

            ListTile(
              minLeadingWidth: 10,
              contentPadding: EdgeInsets.only(left: 28),
              leading: Icon(
                MyFlutterApp.bell,
                color: Colors.grey,
              ),
              title: Text(
                "Notifications",
                style: Defaults.fontPops,
              ),
            ),
            SizedBox(
              height: 5,
            ),

            ListTile(
              minLeadingWidth: 10,
              contentPadding: EdgeInsets.only(left: 28),
              leading: Icon(
                MyFlutterApp.settings,
                color: Colors.grey,
              ),
              title: Text(
                "Settings",
                style: Defaults.fontPops,
              ),
            ),
            ListTile(
              minLeadingWidth: 10,
              contentPadding: EdgeInsets.only(left: 28),
              leading:
                  Icon(Icons.logout, color: Color.fromARGB(255, 172, 164, 164)),
              title: Text("Logout", style: Defaults.fontPops),
            ),
          ])),
        ],
      ),
    );
  }
}

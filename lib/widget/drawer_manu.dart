import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DrawerManu extends StatefulWidget {
  @override
  State<DrawerManu> createState() => _DrawerManuState();
}

class _DrawerManuState extends State<DrawerManu> {
  static const _whitePrimaryValue = 0xffffffff;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width * 0.79,
      backgroundColor: Color(0xff341A9D),
      shape: OutlineInputBorder(
        borderSide: BorderSide(color: Color(0xff341A9D)),
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(40),
        ),
      ),
      child: ListView(
        children: [
          DrawerHeader(
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, "/profile");
              },
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50.0),
                    child: Image.asset(
                      'assets/images/profile.png',
                      width: 70,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Tara",
                          style: TextStyle(fontSize: 24, color: Colors.white),
                        ),
                        Text(
                          "johndoe@gmail.com",
                          style: TextStyle(fontSize: 11, color: Colors.white),
                        ),
                        Text(
                          "9991112223",
                          style: TextStyle(fontSize: 11, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  InkWell(
                    onTap: () {
                     Navigator.pushNamed(context, '/notification');
                    },
                    child: Container(
                      child: Stack(
                        children: [
                          Align(
                              alignment: AlignmentDirectional.centerEnd,
                              child: Icon(
                                Icons.notifications_outlined,
                                color: Color(_whitePrimaryValue),
                              ))
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          ListTile(
            title: Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Text('Chat with Astrologer',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(_whitePrimaryValue))),
            ),
            onTap: () {
              Navigator.pushNamed(context, "/astro_chat");
            },
          ),
          ListTile(
            title: Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Text('Call Your Astrologer',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(_whitePrimaryValue))),
            ),
            onTap: () {
              Navigator.pushNamed(context, "/astro_call");
            },
          ),
          ListTile(
            title: Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Text('Free Kundli',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(_whitePrimaryValue))),
            ),
            onTap: () {
              Navigator.pushNamed(context, "/kundali");
            },
          ),
          ListTile(
            title: Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Text('History',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(_whitePrimaryValue))),
            ),
            onTap: () {
              Navigator.pushNamed(context, "/history");
            },
          ),
          ListTile(
            title: Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Text('Detailed Report',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(_whitePrimaryValue))),
            ),
            onTap: () {
              Navigator.pushNamed(context, "/home");
            },
          ),
          ListTile(
            title: Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Text('Planetary Transit',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(_whitePrimaryValue))),
            ),
            onTap: () {
              Navigator.pushNamed(context, "/planetarytransit");
            },
          ),
          ListTile(
            title: Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Text('Settings',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(_whitePrimaryValue))),
            ),
            onTap: () {
              Navigator.pushNamed(context, "/settings");
            },
          ),
          ListTile(
            title: Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Text('About Us',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(_whitePrimaryValue))),
            ),
            onTap: () {
              Navigator.pushNamed(context, "/home");
            },
          ),
          ListTile(
            title: Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Text('Contact Us',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(_whitePrimaryValue))),
            ),
            onTap: () {
              Navigator.pushNamed(context, "/home");
            },
          ),
          ListTile(
            title: Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Text('Register As Astrologer',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(_whitePrimaryValue))),
            ),
            onTap: () {
              Navigator.pushNamed(context, "/home");
            },
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40, top: 40),
            child: Text('Follow Us',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(_whitePrimaryValue))),
          ),
          SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40.0),
            child: Row(
              children: [
                FaIcon(
                  FontAwesomeIcons.facebookF,
                  size: 17,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 15,
                ),
                FaIcon(
                  FontAwesomeIcons.twitter,
                  size: 17,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 15,
                ),
                FaIcon(
                  FontAwesomeIcons.linkedinIn,
                  size: 17,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 15,
                ),
                FaIcon(
                  FontAwesomeIcons.instagram,
                  size: 17,
                  color: Colors.white,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: ListTile(
              leading: FaIcon(FontAwesomeIcons.signOut,color: Colors.white,),
              title: Text('LOGOUT',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Color(_whitePrimaryValue))),
              onTap: () {
                Navigator.pushNamed(context, "/home");
              },
            ),
          ),
          SizedBox(
            height: 60,
          )
        ],
      ),
    );
  }
}
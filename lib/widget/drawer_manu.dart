import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../utils/Custom_Font.dart';

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

  void _navigateAndCloseDrawer(String routeName) {
    Navigator.pop(context);
    Navigator.pushNamed(context, routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width * 0.79,
      backgroundColor: const Color(0xff341A9D),
      shape: const OutlineInputBorder(
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
                _navigateAndCloseDrawer("/profile");
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
                    margin: const EdgeInsets.only(left: 10),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Tara",
                          style: TextStyle(fontSize: 24, color: Colors.white,fontWeight: FontWeight.bold,fontFamily: Poppins),
                        ),
                        Text(
                          "johndoe@gmail.com",
                          style: TextStyle(fontSize: 11, color: Color(0xffE1E1E1),fontFamily: Lato,),
                        ),
                        Text(
                          "9991112223",
                          style: TextStyle(fontSize: 11, color: Color(0xffE1E1E1),fontFamily: Lato,),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () {
                      _navigateAndCloseDrawer('/notification');
                    },
                    child: Align(
                        alignment: AlignmentDirectional.centerEnd,
                        child:   Stack(children: [
                          const Icon(
                            Icons.notifications_none,
                            color: Colors.white,
                          ),
                          Positioned(
                              top: 0,
                              right: 0,
                              child: Container(
                                height: 10,
                                width: 10,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.green,
                                ),
                                child: const Center(
                                    child: Text(
                                      "1",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 9),
                                    )),
                              )),

                        ]),),
                  )
                ],
              ),
            ),
          ),
          ListTile(
            title: const Padding(
              padding: EdgeInsets.only(left: 25),
              child: Text('Chat with Astrologer',
                  style: TextStyle(
                      fontSize: 16,fontFamily: Poppins,
                      fontWeight: FontWeight.w500,
                      color: Color(_whitePrimaryValue))),
            ),
            onTap: () {
              _navigateAndCloseDrawer("/astro_chat");
            },
          ),
          ListTile(
            title: const Padding(
              padding: EdgeInsets.only(left: 25),
              child: Text('Call Your Astrologer',
                  style: TextStyle(
                      fontSize: 16,fontFamily:  Poppins,
                      fontWeight: FontWeight.w500,
                      color: Color(_whitePrimaryValue))),
            ),
            onTap: () {
              _navigateAndCloseDrawer("/astro_call");
            },
          ),
          ListTile(
            title: const Padding(
              padding: EdgeInsets.only(left: 25),
              child: Text('Free Kundli',
                  style: TextStyle(
                      fontSize: 16,fontFamily: Poppins,
                      fontWeight: FontWeight.w500,
                      color: Color(_whitePrimaryValue))),
            ),
            onTap: () {
              _navigateAndCloseDrawer("/kundali");
            },
          ),
          ListTile(
            title: const Padding(
              padding: EdgeInsets.only(left: 25),
              child: Text('History',
                  style: TextStyle(
                      fontSize: 16,fontFamily: Poppins,
                      fontWeight: FontWeight.w500,
                      color: Color(_whitePrimaryValue))),
            ),
            onTap: () {
              _navigateAndCloseDrawer("/history");
            },
          ),
          ListTile(
            title: const Padding(
              padding: EdgeInsets.only(left: 25),
              child: Text('Detailed Report',
                  style: TextStyle(
                      fontSize: 16,fontFamily: Poppins,
                      fontWeight: FontWeight.w500,
                      color: Color(_whitePrimaryValue))),
            ),
            onTap: () {
              _navigateAndCloseDrawer("/home");
            },
          ),
          ListTile(
            title: const Padding(
              padding: EdgeInsets.only(left: 25),
              child: Text('Planetary Transit',
                  style: TextStyle(
                      fontSize: 16,fontFamily: Poppins,
                      fontWeight: FontWeight.w500,
                      color: Color(_whitePrimaryValue))),
            ),
            onTap: () {
              _navigateAndCloseDrawer("/planetarytransit");
            },
          ),
          ListTile(
            title: const Padding(
              padding: EdgeInsets.only(left: 25),
              child: Text('Settings',
                  style: TextStyle(
                      fontSize: 16,fontFamily: Poppins,
                      fontWeight: FontWeight.w500,
                      color: Color(_whitePrimaryValue))),
            ),
            onTap: () {
              _navigateAndCloseDrawer("/settings");
            },
          ),
          ListTile(
            title: const Padding(
              padding: EdgeInsets.only(left: 25),
              child: Text('About Us',
                  style: TextStyle(
                      fontSize: 16,fontFamily: Poppins,
                      fontWeight: FontWeight.w500,
                      color: Color(_whitePrimaryValue))),
            ),
            onTap: () {
              _navigateAndCloseDrawer("/home");
            },
          ),
          ListTile(
            title: const Padding(
              padding: EdgeInsets.only(left: 25),
              child: Text('Contact Us',
                  style: TextStyle(
                      fontSize: 16,fontFamily: Poppins,
                      fontWeight: FontWeight.w500,
                      color: Color(_whitePrimaryValue))),
            ),
            onTap: () {
              _navigateAndCloseDrawer("/home");
            },
          ),
          ListTile(
            title: const Padding(
              padding: EdgeInsets.only(left: 25),
              child: Text('Register As Astrologer',
                  style: TextStyle(
                      fontSize: 16,fontFamily: Poppins,
                      fontWeight: FontWeight.w500,
                      color: Color(_whitePrimaryValue))),
            ),
            onTap: () {
              _navigateAndCloseDrawer("/home");
            },
          ),
          const Padding(
            padding: EdgeInsets.only(left: 40, top: 40),
            child: Text('Follow Us',
                style: TextStyle(
                    fontSize: 16,fontFamily: Poppins,
                    fontWeight: FontWeight.w500,
                    color: Color(_whitePrimaryValue))),
          ),
          const SizedBox(
            height: 8,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 40.0),
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
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: ListTile(
              leading: const FaIcon(FontAwesomeIcons.signOut,color: Colors.white,),
              title: const Text('LOGOUT',
                  style: TextStyle(
                      fontSize: 20,fontFamily: Poppins,
                      fontWeight: FontWeight.w600,
                      color: Color(_whitePrimaryValue))),
              onTap: () {
                _navigateAndCloseDrawer("/home");
              },
            ),
          ),
          const SizedBox(
            height: 60,
          )
        ],
      ),
    );
  }
}

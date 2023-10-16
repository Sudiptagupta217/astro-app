import 'package:flutter/material.dart';

class BottomMenu extends StatelessWidget {
  final selectedIndex;
  ValueChanged<int> onClicked;
  BottomMenu({super.key, this.selectedIndex, required this.onClicked});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(30)),
        boxShadow: [
          BoxShadow(
              color: Color(0xffDDDDDD),
              blurRadius: 10,
              spreadRadius: 0,
             ),
        ],
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(30),

        ),
        child: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Color(0xFFFFFFFF),


            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.group_outlined),
              label: 'Astrologers',
              backgroundColor: Color(0xFFFFFFFF),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined),
              label: 'Shop ',
              backgroundColor: Color(0xFFFFFFFF),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_balance_wallet_outlined),
              label: 'Wallet',
              backgroundColor: Color(0xFFFFFFFF),
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined),
              label: 'Profile',
              backgroundColor: Color(0xFFFFFFFF),
            ),
          ],
          currentIndex: selectedIndex,
          selectedItemColor: const Color(0xFF341A9D),
          unselectedItemColor: const Color(0xFF9C9C9C),


          onTap: (index){
            switch(index){
              case 0:
                onClicked;
                Navigator.pushNamed(context, "/home");
                break;
              case 1:
                onClicked;
                Navigator.pushNamed(context, "/astrologers_list");
                break;
              case 2:
                onClicked;
                Navigator.pushNamed(context, "/shop");
                break;
              case 3:
                onClicked;
                Navigator.pushNamed(context, "/wallet");
                break;
                case 4:
                onClicked;
                Navigator.pushNamed(context, "/profile");
                break;
            }
          },
        ),
      ),
    );
  }
}

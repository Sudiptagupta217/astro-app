import 'package:astro/utils/Custom_Font.dart';
import 'package:flutter/material.dart';
import '../widget/buttom_manu.dart';
import '../widget/drawer_manu.dart';

class RecentTransactions extends StatefulWidget {
  const RecentTransactions({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _RecentTransactionsState();
}

class _RecentTransactionsState extends State<RecentTransactions> {
  int selectedIndex = 3;

  void onClicked(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    var transactions=[
      {'paymenttype': 'Payment from Fiverr', 'status': 'Completed', 'price': '\$50'},
      {'paymenttype': 'Payment from Fiverr', 'status': 'Completed', 'price': '\$50'},
      {'paymenttype': 'Payment from Fiverr', 'status': 'Completed', 'price': '\$50'},
      {'paymenttype': 'Payment from Fiverr', 'status': 'Completed', 'price': '\$50'},
      {'paymenttype': 'Payment from Fiverr', 'status': 'Completed', 'price': '\$50'},
      {'paymenttype': 'Payment from Fiverr', 'status': 'Completed', 'price': '\$50'},
      {'paymenttype': 'Payment from Fiverr', 'status': 'Completed', 'price': '\$50'},
    ];

    return Scaffold(
      drawer: DrawerManu(),
      bottomNavigationBar: BottomMenu(
        selectedIndex: selectedIndex,
        onClicked: onClicked,
      ),
      body:
      SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/bg.png"),
                  fit: BoxFit.cover)),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                margin: const EdgeInsets.only(top: 60),
                child: Column(
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: const Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                          ),
                        ),
                        const Spacer(),
                        const Text(
                          "Pay",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.5),
                        ),
                        const Spacer(),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.only(top: 30),
                padding: const EdgeInsets.only(top: 30, right: 15, left: 15),
                decoration: const BoxDecoration(
                    color: Color(0xFFF8F8F9),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50.0),
                    )),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Recent Transactions",
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: Raleway,
                          fontWeight: FontWeight.w600),
                    ),

                    ListView(
                        padding: const EdgeInsets.only(top: 5),
                        shrinkWrap: true,
                        physics: const BouncingScrollPhysics(),
                        children: transactions.map((value) {
                          return Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Card(
                              color: Colors.white,
                              elevation: 0.1,
                              shadowColor: Colors.blueGrey,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              child: ListTile(
                                leading: const CircleAvatar(
                                  radius: 30.0,
                                  backgroundImage:
                                  AssetImage('assets/images/profile.png'),
                                ),
                                title: Text(value['paymenttype'].toString(),
                                    style: const TextStyle(
                                        fontSize: 14,
                                        fontFamily: Poppins,
                                        fontWeight: FontWeight.w600)),
                                subtitle: Text(value['status'].toString(),
                                    style: const TextStyle(
                                        fontSize: 12,
                                        color: Colors.green,
                                        fontFamily: Poppins,
                                        fontWeight: FontWeight.w500)),
                                trailing: Text(
                                  value['price'].toString(),
                                  style: const TextStyle(
                                      fontSize: 16,
                                      fontFamily: Poppins,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ),
                          );
                        }).toList())
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
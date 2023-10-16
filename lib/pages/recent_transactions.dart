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
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/bg.png"),
                  fit: BoxFit.cover)),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 25),
                margin: EdgeInsets.only(top: 60),
                child: Column(
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: Container(
                            child: Icon(
                              Icons.arrow_back_ios,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Spacer(),
                        Container(
                          child: Text(
                            "Pay",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0.5),
                          ),
                        ),
                        Spacer(),
                      ],
                    ),


                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(top: 30),
                padding: EdgeInsets.only(top: 30, right: 20, left: 20),
                decoration: BoxDecoration(
                    color: Color(0xFFF8F8F9),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50.0),
                    )),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Recent Transactions",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    ),

                    Container(
                      child: ListView(
                        padding: EdgeInsets.only(top: 10),
                          shrinkWrap: true,
                          physics: BouncingScrollPhysics(),
                          children:transactions.map((value){
                            return Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Card(
                                color: Colors.white,
                                elevation: 0.1,
                                shadowColor: Colors.blueGrey,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Container(
                                  margin: EdgeInsets.all(5),
                                  child: ListTile(
                                    leading:
                                    CircleAvatar(
                                      radius:30.0,
                                      backgroundImage: AssetImage('assets/images/profile.png'),
                                    ),
                                    title: Text(value['paymenttype'].toString(),style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600)),
                                    subtitle: Text(value['status'].toString(),style: TextStyle(fontSize: 12,color: Colors.green,fontWeight: FontWeight.w600)),
                                    trailing: Text(value['price'].toString(),style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),),
                                  ),
                                ),
                              ),
                            );
                          }).toList()
                      ),
                    )


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
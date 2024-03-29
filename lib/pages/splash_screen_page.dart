import 'package:astro/pages/account_auth.dart';
import 'package:flutter/material.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }
  _navigatetohome() async {
    await Future.delayed(const Duration(milliseconds: 3000), () {});
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const AccountAuth()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/bg.png"),
          fit: BoxFit.cover
        )
        ),
        child: const Image(
          image: AssetImage("assets/images/app_logo.png"),
        ),
      ),
    );
  }
}

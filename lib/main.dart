import 'package:astro/pages/account_auth.dart';
import 'package:astro/pages/astro_call_page.dart';
import 'package:astro/pages/astro_chat_page.dart';
import 'package:astro/pages/astrologers_list_page.dart';
import 'package:astro/pages/trending_consultantations_type_page.dart';
import 'package:astro/pages/blog_describe_page.dart';
import 'package:astro/pages/blog_page.dart';
import 'package:astro/pages/checkout_page.dart';
import 'package:astro/pages/confirmed_page.dart';
import 'package:astro/pages/daily_horoscope_page.dart';
import 'package:astro/pages/user_info_details_page.dart';
import 'package:astro/pages/history_page.dart';
import 'package:astro/pages/home_page.dart';
import 'package:astro/pages/intake_form_page.dart';
import 'package:astro/pages/kundlidate_page.dart';
import 'package:astro/pages/kundligender_page.dart';
import 'package:astro/pages/kundliname_page.dart';
import 'package:astro/pages/kundliplace_page.dart';
import 'package:astro/pages/kundlitime_page.dart';
import 'package:astro/pages/match_making_boy.dart';
import 'package:astro/pages/match_making_girl.dart';
import 'package:astro/pages/my_cart_page.dart';
import 'package:astro/pages/notification_page.dart';
import 'package:astro/pages/otp_verification_page.dart';
import 'package:astro/pages/pay_page.dart';
import 'package:astro/pages/planetary_transit_page.dart';
import 'package:astro/pages/profile_page.dart';
import 'package:astro/pages/recent_transactions.dart';
import 'package:astro/pages/settings_page.dart';
import 'package:astro/pages/shop_item_details_page.dart';
import 'package:astro/pages/shop_now_page.dart';
import 'package:astro/pages/shubh_muhurat_consultation_details_page.dart';
import 'package:astro/pages/shubh_muhurat_consultation_page.dart';
import 'package:astro/pages/splash_screen_page.dart';
import 'package:astro/pages/trending_consultations_page.dart';
import 'package:astro/pages/video_details_page.dart';
import 'package:astro/pages/videos_page.dart';
import 'package:astro/pages/wallet_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static const String _title = 'Ceocent Astro';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (BuildContext context) => SplashScreen(),
        '/home': (BuildContext context) => HomeScreen(),
        '/dailyhoroscope': (BuildContext context) => DailyHoroscope(),
       '/astrologers_list': (BuildContext context) => AstrologersList(),
        '/trending_consultations_type': (BuildContext context) => TrendingConsultationsType(),
        '/astro_call': (BuildContext context) => AstroCall(),
        '/astro_chat': (BuildContext context) => AstroChat(),
        '/account_auth': (BuildContext context) => AccountAuth(),
        '/otp_verification': (BuildContext context) => OtpVerification(),
        '/details': (BuildContext context) => DetailsPage(),
        '/profile': (BuildContext context) => ProfilePage(),
        '/wallet': (BuildContext context) => WalletPage(),
        '/recent_transaction': (BuildContext context) => RecentTransactions(),
       '/shop': (BuildContext context) => ShopNowPage(),
       '/kundali': (BuildContext context) => KundaliName(),
       '/kundaligenderi': (BuildContext context) => KundaliGender(),
       '/kundalidate': (BuildContext context) => KundaliDate(),
       '/kundalitime': (BuildContext context) => KundaliTime(),
       '/kundaliplace': (BuildContext context) => KundaliPlace(),
       '/matchmakingboy': (BuildContext context) => MatchMakingBoy(),
       '/matchmakinggirl': (BuildContext context) => MatchMakingGirl(),
       '/shubhmuhurat': (BuildContext context) => ShubhMuhurat(),
       '/shubhmuhuratdetails': (BuildContext context) => ShubhMuhuratDetails(),
       '/trendingconsultations': (BuildContext context) => TrendingConsultations(),
       '/notification': (BuildContext context) => UserNotification(),
        '/history': (BuildContext context) => UserHistory(),
        '/settings': (BuildContext context) => UserSettings(),
        '/shopitemdetails': (BuildContext context) => ShopItemDetails(),
        '/mycart': (BuildContext context) => MyCart(),
        '/checkout': (BuildContext context) => CheckOut(),
        '/confirmed': (BuildContext context) => ConfirmedBuy(),
        '/videos': (BuildContext context) => Videos(),
        '/videodetails': (BuildContext context) => VideoDetails(),
        '/blog': (BuildContext context) => Blog(),
        '/blogdescribe': (BuildContext context) => BlogDescribe(),
        '/pay': (BuildContext context) => Pay(),
        '/planetarytransit': (BuildContext context) => PlanetaryTransit(),
        '/intakeform': (BuildContext context) => IntakeForm(),

      },
      title: _title,
      debugShowCheckedModeBanner: false,
      //home: HomeScreen(),
    );
  }
}

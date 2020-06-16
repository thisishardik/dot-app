import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:srmdot/dashboard/add_item_page.dart';
import 'package:srmdot/dashboard/choose_location.dart';
import 'package:srmdot/dashboard/dashboard.dart';
import 'package:srmdot/item_info/item_info.dart';
import 'package:srmdot/login_page/login_page_customer.dart';
import 'package:srmdot/login_page/login_page_retailer.dart';
import 'package:srmdot/show_orders/show_orders.dart';
import 'package:srmdot/sign_up_page/sign_up_page_customer.dart';
import 'package:srmdot/sign_up_page/sign_up_page_retailer.dart';
import 'package:srmdot/splash_screen/splash_screen.dart';
import 'package:srmdot/welcome_screen/customer_or_retailer.dart';
import 'package:srmdot/welcome_screen/welcome_screen.dart';

import 'dashboard/qr_code_scanner.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: Dashboard.id,
        routes: {
          SplashScreen.id: (context) => SplashScreen(),
          WelcomeScreen.id: (context) => WelcomeScreen(),
          CustomerOrRetailer.id: (context) => CustomerOrRetailer(),
          SignUpPageCustomer.id: (context) => SignUpPageCustomer(),
          LoginPageCustomer.id: (context) => LoginPageCustomer(),
          SignUpPageRetailer.id: (context) => SignUpPageRetailer(),
          LoginPageRetailer.id: (context) => LoginPageRetailer(),
          ChooseLocation.id: (context) => ChooseLocation(),
          Dashboard.id: (context) => Dashboard(),
          ShowOrders.id: (context) => ShowOrders(),
          AddItemPage.id: (context) => AddItemPage(),
          QrCodeScanner.id: (context) => QrCodeScanner(),
          ItemInfo.id: (context) => ItemInfo(),
        });
  }
}

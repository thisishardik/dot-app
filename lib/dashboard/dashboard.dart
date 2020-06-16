import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:srmdot/dashboard/add_item_page.dart';
import 'package:srmdot/item_info/item_info.dart';
import 'package:srmdot/show_orders/show_orders.dart';
import 'package:srmdot/welcome_screen/customer_or_retailer.dart';

class Dashboard extends StatefulWidget {
  static String id = 'dashboard';

  String RF_Id;
  String itemName;
  String maxWeight;
  Dashboard({this.RF_Id, this.maxWeight, this.itemName});

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  int flagValue = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          primary: true,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black87),
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.black,
              size: 25.5,
            ),
            onPressed: () => _scaffoldKey.currentState.openDrawer(),
          ),
          actions: <Widget>[
            SizedBox(
              width: 10.0,
            ),
            IconButton(
              icon: Icon(Icons.shopping_cart, color: Colors.black),
            )
          ],
          title: Text(
            'Dashboard',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        drawer: Drawer(
          elevation: 20.0,
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                Container(
                    padding: EdgeInsets.all(10.0),
                    height: 80.0,
                    child: Image.asset('assets/images/dotlogo.png')),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 15.0,
                      ),
                      child: Text(
                        'Signed In',
                        style: TextStyle(
                          color: Color(0xFF616e7e),
                          fontSize: 19.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, top: 10.0, bottom: 10.0),
                      child: Text(
                        'user@gmail.com',
                        style: TextStyle(
                          color: Color(0xFF616e7e),
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFffe0cc),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: ListTile(
                      title: Text(
                        "Dashboard",
                        style: TextStyle(
                            color: Colors.deepOrange,
                            fontSize: 17.0,
                            fontWeight: FontWeight.bold),
                      ),
                      leading: Icon(
                        Icons.home,
                        color: Colors.deepOrange,
                      ),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ),
                ListTile(
                  title: Text(
                    "Show Orders",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold),
                  ),
                  leading: Icon(
                    Icons.shopping_cart,
                    color: Color(0xFF616e7e),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.fade,
                          child: ShowOrders(),
                        ));
                  },
                ),
                ListTile(
                  title: Text(
                    "Running Low",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold),
                  ),
                  leading: Icon(
                    Icons.report_problem,
                    color: Color(0xFF616e7e),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  title: Text(
                    "Analysis",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold),
                  ),
                  leading: Icon(
                    Icons.assessment,
                    color: Color(0xFF616e7e),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  title: Text(
                    "Profile",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold),
                  ),
                  leading: Icon(
                    Icons.person,
                    color: Color(0xFF616e7e),
                  ),
                  onTap: () {},
                ),
                SizedBox(height: 20.0),
                SizedBox(
                  width: 60.0,
                  height: 50,
                  child: Divider(
                    height: 30.0,
                    thickness: 1.2,
                  ),
                ),
                Column(
                  children: <Widget>[
                    SizedBox(height: 15.0),
                    MaterialButton(
                      padding: EdgeInsets.all(0.0),
                      splashColor: Colors.white,
                      onPressed: () {
                        Navigator.push(
                            context,
                            PageTransition(
                              type: PageTransitionType.fade,
                              child: CustomerOrRetailer(),
                            ));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(35.0),
                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Color.fromRGBO(255, 123, 67, 1.0),
                                  Color.fromRGBO(245, 50, 111, 1.0)
                                ])),
                        width: 100.0,
                        height: 40.0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Text(
                              'Logout',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 15.0),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Center(
                        child: Text(
                          'Version: 1.0.0',
                          style: TextStyle(
                            color: Color(0xFF616e7e),
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        body: ListView(
          shrinkWrap: true,
          children: <Widget>[
            SizedBox(height: 20.0),
            Container(
              padding: EdgeInsets.only(left: 90.0, right: 90.0),
              width: 60.0,
              height: 65.0,
              child: OutlineButton(
                borderSide: BorderSide(
                  width: 2.0,
                  color: Colors.deepOrange,
                ),
                onPressed: () {
                  flagValue = 1;
                  Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.fade, child: AddItemPage()));
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                splashColor: Colors.deepOrange,
                child: Text(
                  'Add Item',
                  style: TextStyle(
                      color: Colors.deepOrange,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: 1,
              itemBuilder: (context, index) {
                return flagValue == 1
                    ? Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                PageTransition(
                                    type: PageTransitionType.fade,
                                    child: ItemInfo()));
                          },
                          child: Center(
                            child: Card(
                              elevation: 3.0,
                              child: Container(
                                  height: 60.0,
                                  width: 60.0,
                                  color: Colors.deepOrange),
                            ),
                          ),
                        ),
                      )
                    : Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                PageTransition(
                                    type: PageTransitionType.fade,
                                    child: ItemInfo()));
                          },
                          child: Center(
                            child: Card(
                              elevation: 3.0,
                              child: Container(
                                  height: 60.0,
                                  width: 60.0,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                      );
              },
            ),
          ],
        ),
      ),
    );
  }
}

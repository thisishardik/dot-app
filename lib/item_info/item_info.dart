import 'package:flutter/material.dart';

class ItemInfo extends StatefulWidget {
  static String id = 'item_info';

  @override
  _ItemInfoState createState() => _ItemInfoState();
}

class _ItemInfoState extends State<ItemInfo> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: 50.0,
          height: 50.0,
          color: Colors.deepOrange,
        ),
      ),
    );
  }
}

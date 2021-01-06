import 'package:custom_appbar/custom_appbar.dart';
import 'package:custom_appbar/size_config.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: MyApp(),));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: buildAppBar(context),

      bottomNavigationBar: Container(
        height: SizeConfig.height(50),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey[200],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.home,
                      color: Colors.red,
                    ),
                    Text(
                      'Home',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.red,
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.list_alt_rounded),
                    Text(
                      'Categories',
                      style: TextStyle(fontSize: 12),
                    )
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.rss_feed_outlined),
                    Text(
                      'Feed',
                      style: TextStyle(fontSize: 12),
                    )
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.account_circle_outlined),
                    Text(
                      'Account',
                      style: TextStyle(fontSize: 12),
                    )
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.feedback_outlined),
                    Text(
                      'Feedback',
                      style: TextStyle(fontSize: 12),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),

      ),
    );
  }


  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.red,
      automaticallyImplyLeading: false,
      elevation: 0,
      title: CustomAppBar(
        icon: Icon(
          Icons.search,
          color: Colors.black,
        ),
        hintText: 'Search on Smakos',
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(
            Icons.shopping_cart_outlined,
            size: 35,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {

              }),
            );
          },
        ),
        SizedBox(width: kDefaultPaddin / 2)
      ],
    );
  }
}




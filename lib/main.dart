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
            color: Colors.blueAccent[700],
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
                      color: Colors.blueAccent[700],
                    ),
                    Text(
                      'Home',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
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
      backgroundColor: Colors.blueAccent[700],
      automaticallyImplyLeading: false,
      elevation: 0,
      title: CustomAppBar(
        icon: Icon(
          Icons.search,
          color: Colors.black,
        ),
        hintText: 'Search....',
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(
            Icons.phonelink_lock_sharp,
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




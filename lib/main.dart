import 'package:flutter/material.dart';
import 'package:flutter_demo/second_page.dart';

import 'home_page.dart';

void main() => runApp(MyApp());


/// Whether the extent of the scroll view in the [scrollDirection] should be
/// determined by the contents being viewed.
///
/// If the scroll view does not shrink wrap, then the scroll view will expand
/// to the maximum allowed size in the [scrollDirection]. If the scroll view
/// has unbounded constraints in the [scrollDirection], then [shrinkWrap] must
/// be true.
///
/// Shrink wrapping the content of the scroll view is significantly more
/// expensive than expanding to the maximum allowed size because the content
/// can expand and contract during scrolling, which means the size of the
/// scroll view needs to be recomputed whenever the scroll position changes.
///
/// Defaults to false.

class MyApp extends StatelessWidget {
  static String TAG="DEMO_TAG";
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),

//     initialRoute是第一个看到的页面，home是首(根)页。
//    1 initialRoute单独出现时，路由表中需要有’/’，’/‘当做首页，
//    2 initialRoute和home都有时，使用init，路由表不需要’/’，返回按钮会返回到home，home是首页，
//    3 home单独出现时，路由表中可以没’/’，有也会覆盖掉。
//    4 home，init都没有，使用onGenerateRoute中的’/’，
//    5 init、home、路由表的’/'都没有时，报错。

      home: HomePage(title: 'Home Page'),
      initialRoute: "/",
      routes: {
        //initialRoute和home都有时，路由表中就不能再定义 "/"
//        "/": (context) => HomePage(title: 'Home Page'),
        '/second': (context) => SecondPage(title: 'SecondPage'),
      },
    );
  }
}


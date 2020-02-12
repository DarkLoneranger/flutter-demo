import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_demo/base/base_state.dart';

import 'main.dart';

class SecondPage extends StatefulWidget {
  SecondPage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _SecondPageState createState() => _SecondPageState();

}

class _SecondPageState extends BaseState<SecondPage> {
  var snackBar;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    dynamic obj = ModalRoute.of(context).settings.arguments;

      print("${MyApp.TAG} ${obj==null?"参数为空":obj.toString()}");



    List<String> list1 = new List();
    for (var i = 0; i < 5; i++) {
      list1.add("title item index= $i");
    }


    List<String> list2 = ["k", "l", "e", "p", "q"];
    List<String> list3 = new List();
    for (var letter in list2) {
      list3.add("title item = $letter ");
    }

    List<String> list = list1;
    print("${MyApp.TAG}  $runtimeType  ${list?.length}");
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the SecondPage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);

          },
          child: Icon(Icons.arrow_back),
        ),
      ),
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: list?.length, // item 的个数
        itemExtent: 50.0, // 如果为非null，则强制子项在滚动方向上具有给定范围
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(list == null ? "$index" : list[index]),
            // item 标题
            leading: Icon(Icons.keyboard),
            // item 前置图标
            subtitle: Text("subtitle $index"),
            // item 副标题
            trailing: Icon(Icons.keyboard_arrow_right),
            // item 后置图标
            isThreeLine: false,
            // item 是否三行显示
            dense: true,
            // item 直观感受是整体大小
            contentPadding: EdgeInsets.all(10.0),
            // item 内容内边距
            enabled: true,
            onTap: () {
              Scaffold.of(context).removeCurrentSnackBar();
              snackBar = new SnackBar(content: new Text('正在点击$index'));
              Scaffold.of(context).showSnackBar(snackBar);
            },
            // item onTap 点击事件
            onLongPress: () {

            },
            // item onLongPress 长按事件
            selected: false, // item 是否选中状态
          );
        },
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {


        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
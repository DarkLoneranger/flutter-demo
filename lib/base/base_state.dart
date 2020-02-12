import 'package:flutter/widgets.dart';
import 'package:flutter_demo/main.dart';


/**
 * initSate()
    当widget第一次插入widget树是被调用，即初始化。初始化时相应的widget树还没有完全确定，所以不能在该毁掉中使用BuildContext.inheritFromWidgetOfExactype来获取widget树上最近的父级InheritFromWidget。
    didChangeDependencies()
    当state所依赖的对象发生变化时调用。
    build()
    用于构建widget子树，在initState(),didUpdateWidget(),setState(),didChangeDependencies(),之后被调用。
    deactivate()
    当state从widget树中移除时调用此方法。
    reassemble()
    用于开发调试，在热重载是被调用，在release模式下不会被调用。
    didUpdateWidget()
    当widget重新构建时，flutter framework会调用widget.canUpdatte检查widget树中同一位置的结点需不需要更新，如果返回true则调用此方法更新结点。
    dispose()
    当state对象被从树中永久移除时调用。
 */
class BaseState<T extends StatefulWidget>  extends State<T> {
  static String STATE_TAG="state ==>";
  @override
  void initState() {
    super.initState();
    print("${MyApp.TAG} ${STATE_TAG} $runtimeType initState");
  }
  
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("${MyApp.TAG} ${STATE_TAG} $runtimeType didChangeDependencies");
  }
  
  @override
  Widget build(BuildContext context) {
    print("${MyApp.TAG} ${STATE_TAG} $runtimeType build");

  }
  
  @override
  void deactivate() {
    super.deactivate();
    print("${MyApp.TAG} ${STATE_TAG} $runtimeType deactivate");
  }
  
  @override
  void reassemble() {
    super.reassemble();
    print("${MyApp.TAG} ${STATE_TAG} $runtimeType reassemble");
  }
  
  @override
  void didUpdateWidget(StatefulWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("${MyApp.TAG} ${STATE_TAG} $runtimeType didUpdateWidget");
  }

  @override
  void dispose() {
    super.dispose();
    print("${MyApp.TAG} ${STATE_TAG} $runtimeType didUpdateWidget");
  }
}
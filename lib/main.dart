import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Fltter Demo',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: MyHomePage(title: 'Flutter Demo Home Page'));
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;
  @override
  State<StatefulWidget> createState() {
    print('createState()');
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  ///数量
  int _counter = 0;

  void _incrementCounter() {
    print('点击');

    ///通知框架这个对象的内部状态已经改变。
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        ///column 垂直数组中显示其子元素的小部件。
        child: Column(
          ///沿主轴放置子元素
          mainAxisAlignment: MainAxisAlignment.center,

          ///元素集合
          children: <Widget>[
            Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        ///点击后调用的方法
        onPressed: _incrementCounter,

        ///点击后的提示语
        tooltip: 'Increment',

        ///图标
        child: Icon(Icons.add),
      ),
    );
  }
}

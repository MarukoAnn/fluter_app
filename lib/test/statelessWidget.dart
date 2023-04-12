import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text widget',
      home: Scaffold(
          body: Center(
        child: MyImageList(),
      )),
    );
  }
}

// 普通列表
class MyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(children: const <Widget>[
      ListTile(
        leading: Icon(Icons.access_time),
        title: Text('access_time'),
      ),
      ListTile(
        leading: Icon(Icons.account_balance),
        title: Text('account_balance'),
      )
    ]);
  }
}

class MyImageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(scrollDirection: Axis.horizontal, children: <Widget>[
      Container(
          width: 300.0,
          height: 200.0,
          alignment: Alignment.centerLeft,
          child: Image.network(
              'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fsafe-img.xhscdn.com%2Fbw1%2Fbda4eb26-72a3-4f19-acec-aa419230d6ed%3FimageView2%2F2%2Fw%2F1080%2Fformat%2Fjpg&refer=http%3A%2F%2Fsafe-img.xhscdn.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1683882988&t=ba6246793e5b287bc5606198a0db183c')),
      Container(
          width: 300.0,
          height: 200.0,
          alignment: Alignment.centerLeft,
          child: Image.network(
              'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fsafe-img.xhscdn.com%2Fbw1%2F2a082abb-a3ea-4040-9e2d-d3ba06ea27a4%3FimageView2%2F2%2Fw%2F1080%2Fformat%2Fjpg&refer=http%3A%2F%2Fsafe-img.xhscdn.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1683882988&t=777b8543cf9f14da15a1959f25429743'))
    ]);
  }
}

/**
 * Container(
            width: 600.0,
            height: 400.0,
            padding: const EdgeInsets.fromLTRB(10.0, 20.0, 0.0, 0), // 内边距
            margin: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
                gradient: const LinearGradient(colors: [
                  Colors.lightBlue,
                  Colors.greenAccent,
                  Colors.purple
                ]),
                border: Border.all(width: 2.0, color: Colors.red)), // 外边距
            child: Image.network(
                'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fsafe-img.xhscdn.com%2Fbw1%2Fbda4eb26-72a3-4f19-acec-aa419230d6ed%3FimageView2%2F2%2Fw%2F1080%2Fformat%2Fjpg&refer=http%3A%2F%2Fsafe-img.xhscdn.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1683882988&t=ba6246793e5b287bc5606198a0db183c',
                color: Colors.grey[500],
                colorBlendMode: BlendMode.darken,
                scale: 0.1))
 */
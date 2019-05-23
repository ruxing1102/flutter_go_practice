import 'package:flutter/cupertino.dart';

class FirstPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new FirstPageState();
  }
}

class FirstPageState extends State<FirstPage>{
  @override
  bool get wantKeepAlive => null;

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new Expanded(child: Text('First page'))
      ],
    );
  }
}

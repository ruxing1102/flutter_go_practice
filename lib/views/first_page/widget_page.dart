import 'package:flutter/cupertino.dart';

class WidgetPage extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return new SecondPageState();
  }

}

class SecondPageState extends State<WidgetPage>{

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new Expanded(child: Text('Second page'))
      ],
    );
  }

}
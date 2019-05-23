import 'package:flutter/cupertino.dart';

class FourthPage extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return new FourthPageState();
  }

}

class FourthPageState extends State<FourthPage>{

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new Expanded(child: Text('fourth page'))
      ],
    );
  }

}
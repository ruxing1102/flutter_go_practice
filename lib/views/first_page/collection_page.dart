import 'package:flutter/cupertino.dart';

class CollectionPage extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return new _CollectionPageState();
  }

}

class _CollectionPageState extends State<CollectionPage>{

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new Expanded(child: Text('Third page'))
      ],
    );
  }



}
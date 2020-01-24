import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CardBox(),
    );
  }
}
class CardBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.fitness_center, size: 50,),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'AffFEFf',
                  style: TextStyle(fontSize: 20),),
                Text(
                  'Experienced App Developer',
                ),
              ],
            ),

          ],
        ),
      ],
    );
  }
}
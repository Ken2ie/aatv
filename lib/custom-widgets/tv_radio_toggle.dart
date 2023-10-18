import 'package:flutter/material.dart';

const List<Widget> media = <Widget>[
  Icon(Icons.tv),
  Icon(Icons.radio),
];


class TvRadio extends StatefulWidget {
  const TvRadio({super.key});

  @override
  State<TvRadio> createState() => _TvRadioState();
}

class _TvRadioState extends State<TvRadio> {

  final List<bool> _selectedMedium = <bool>[true, false];
   bool vertical = false;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: (){

      },
      child: Icon(Icons.tv),
      );
  }
}
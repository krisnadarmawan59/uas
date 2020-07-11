import 'package:flutter/material.dart';
import 'package:uas/ui/listview_note.dart';


void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Returning Data',
        home: ListViewNote(),
      );
 }
}

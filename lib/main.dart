import 'package:flutter/material.dart';
import 'package:flutter_mvvm_with_mobx/features/post/view/post-view.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PostView(),
    );
  }
}
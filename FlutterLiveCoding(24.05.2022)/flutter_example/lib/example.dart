import 'package:flutter/material.dart';

class SomeWidget extends StatefulWidget {
  const SomeWidget({Key? key}) : super(key: key);

  @override
  State<SomeWidget> createState() => _SomeWidgetState();
}

class _SomeWidgetState extends State<SomeWidget> {
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {

    setState(() {
      _isLoading = true;
    });
    

    return Container();
  }
}
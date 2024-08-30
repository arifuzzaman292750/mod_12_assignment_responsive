import 'package:flutter/material.dart';

var backgroundColor = Colors.white;

var appBar = AppBar(
  backgroundColor: Colors.transparent,
  toolbarHeight: 80,
  actions: const [
    Padding(
      padding: EdgeInsets.all(20.0),
      child: Text(
        'HUMMING \nBIRD.',
        style: TextStyle(fontSize: 16),
      ),
    ),
  ],
);
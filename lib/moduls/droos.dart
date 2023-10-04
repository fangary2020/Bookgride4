import 'package:flutter/material.dart';
class ListDroos {
  final String identifer;
  final String id;
  final String title;
  final Color color;
  
  const ListDroos({
    required this.identifer,
    required this.id,
    required this.title,
    this.color=Colors.orange,
  });
}
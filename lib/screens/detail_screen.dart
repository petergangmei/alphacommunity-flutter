import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:alphacommunity/models/products_model.dart';

class DetailScreen extends StatefulWidget {
  final Item item;

  DetailScreen({required this.item});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Detailed Page')),
      body: Center(child: Row(children: [
        Text('detail'),
      ],)),
    );
  }
}
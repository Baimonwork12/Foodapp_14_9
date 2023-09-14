import 'package:flutter/material.dart';


class Ordershop extends StatefulWidget {
  const Ordershop({super.key});

  @override
  State<Ordershop> createState() => _OrdershopState();
}

class _OrdershopState extends State<Ordershop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ออเดอร์')),
     
    );
  }
}
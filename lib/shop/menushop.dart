import 'package:flutter/material.dart';
import 'package:food_app/shop/adddata/add_datamenu.dart';

class MenuShop extends StatefulWidget {
  const MenuShop({super.key});

  @override
  State<MenuShop> createState() => _MenuShopState();
}

class _MenuShopState extends State<MenuShop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(title: Text('เมนูร้านค้า'),
      actions: <Widget>[
        IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Adddatamenu()));
        }, icon: Icon(Icons.note_add))
      ],),
    );
  }
}
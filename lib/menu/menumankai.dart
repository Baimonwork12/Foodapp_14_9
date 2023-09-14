import 'package:flutter/material.dart';
import 'package:food_app/datamenu/datatamsang.dart';




class menumankai extends StatefulWidget {
  const menumankai({super.key});

  @override
  State<menumankai> createState() => _menumankaiState();
}

class _menumankaiState extends State<menumankai> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('เมนูรายการอาหาร'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Center(
              child: Card(
                clipBehavior: Clip.hardEdge,
                child: InkWell(
                    splashColor: Colors.blue,
                    hoverColor: Colors.red,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => kawpad()
                        ),
                      );
                    },
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                            height: 50,
                            width: 100,
                            child: Text(
                              'ข้าวมันไก่',
                              style: TextStyle(fontSize: 20),
                            )),
                      ],
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
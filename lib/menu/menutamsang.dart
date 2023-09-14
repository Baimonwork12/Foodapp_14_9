import 'package:flutter/material.dart';

// ignore: camel_case_types
class menu extends StatefulWidget {
  const menu({super.key});

  @override
  State<menu> createState() => _menuState();
}

class _menuState extends State<menu> {
  List<String> productName = [
    'กะเพรา',
    'ข้าวผัด',
  ];
  List<String> price = ['50บาท', '50 บาท'];
  List<String> productImage = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTABPRMPvWAZEtbhnPKMTI7QZ5D_Ge8QvXI2A&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWkwe5f6l-HVslpofn6im-Rd3F25XDmYCnKw&usqp=CAU',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('เมนูรายการอาหาร'),
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
                  itemCount: productName.length,
                  itemBuilder: ((context, index) {
                    return Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Image.network(
                                  productImage[index].toString(),
                                  height: 150,
                                  width: 150,
                                ),
                                SizedBox(width: 10,),
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                                              crossAxisAlignment: CrossAxisAlignment.center,
                                                              mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        productName[index].toString(),
                                        style: const TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        price[index].toString(),
                                        style: const TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Container(
                                          height: 35,
                                          width: 100,
                                          decoration: BoxDecoration(color: Colors.green,
                                          borderRadius: BorderRadius.circular(5)),
                                          
                                          child: const Center(
                                            child: Text('เพิ่มสินค้า'),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  })))
        ],
      ),
    );
  }
}
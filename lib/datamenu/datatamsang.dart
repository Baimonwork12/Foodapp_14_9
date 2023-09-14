import 'package:flutter/material.dart';

// ignore: camel_case_types
class kawkapao extends StatelessWidget {
  const kawkapao({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('กะเพรา'),
      ),
      body: const datakapao(),
    );
  }
}

// ignore: camel_case_types
enum meat {
  one,
  two,
  three,
  four,
  five,
  six,
  seven,
  eight,
  nine,
}

// ignore: camel_case_types
enum hot { one, two, three }

// ignore: camel_case_types
enum manyother { one, two }
enum  egg {one,two}

// ignore: camel_case_types
class datakapao extends StatefulWidget {
  const datakapao({super.key});

  @override
  State<datakapao> createState() => _datakapaoState();
}

// ignore: camel_case_types
class _datakapaoState extends State<datakapao> {
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _incrementCounter1() {
    setState(() {
      _counter--;
    });
  }
  meat? _character = meat.one;
  hot? _spicy = hot.one;
  manyother? _other = manyother.one;
 egg? _ovum = egg.one;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'เนื้อสัตว์',
                  style: TextStyle(fontSize: 25),
                ),
              ],
            ),
          ),
          RadioListTile<meat>(
              title: const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('หมูกรอบ'),
                ],
              ),
              value: meat.one,
              groupValue: _character,
              onChanged: (meat? value) {
                setState(() {
                  _character = value;
                });
              }),
              Align(
                alignment: Alignment.centerRight,
                child: Column(
                  children: [
                    Text('+10')
                  ],
                ),
              ),
          const Divider(
            height: 0,
          ),
          RadioListTile<meat>(
              title: const Text('หมูชิ้น'),
              value: meat.two,
              groupValue: _character,
              onChanged: (meat? value) {
                setState(() {
                  _character = value;
                });
              }),
          const Divider(
            height: 0,
          ),
          RadioListTile<meat>(
              title: Text('หมูสับ'),
              value: meat.three,
              groupValue: _character,
              onChanged: (meat? value) {
                setState(() {
                  _character = value;
                });
              }),
          const Divider(
            height: 0,
          ),
          RadioListTile<meat>(
              title: Text('ไก่'),
              value: meat.four,
              groupValue: _character,
              onChanged: (meat? value) {
                setState(() {
                  _character = value;
                });
              }),
          const Divider(
            height: 0,
          ),
          RadioListTile<meat>(
              title: Text('ทะเล'),
              value: meat.five,
              groupValue: _character,
              onChanged: (meat? value) {
                setState(() {
                  _character = value;
                });
              }),
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'ระดับความเผ็ด',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
          RadioListTile<hot>(
              title: Text('เผ็ดน้อย'),
              value: hot.one,
              groupValue: _spicy,
              onChanged: (hot? value) {
                setState(() {
                  _spicy = value;
                });
              }),
          const Divider(
            height: 0,
          ),
          RadioListTile<hot>(
              title: Text('เผ็ดปกติ'),
              value: hot.two,
              groupValue: _spicy,
              onChanged: (hot? value) {
                setState(() {
                  _spicy = value;
                });
              }),
          const Divider(
            height: 0,
          ),
          RadioListTile<hot>(
              title: Text('เผ็ดมาก'),
              value: hot.three,
              groupValue: _spicy,
              onChanged: (hot? value) {
                setState(() {
                  _spicy = value;
                });
              }),
               Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
               Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'เพิ่มเติม',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              RadioListTile<egg>(
              title: Text('ไข่เจียว'),
            value: egg.one, 
            groupValue: _ovum,
            onChanged: (egg? value){
              setState(() {
                _ovum =value;
              });
            }),
            RadioListTile<egg>(
              title: Text('ไข่ดาว'),
            value: egg.two, 
            groupValue: _ovum,
            onChanged: (egg? value){
              setState(() {
                _ovum =value;
              });
            }),
              
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'เพิ่มเติม',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
          RadioListTile<manyother>(
              title: Text('ธรรมดา'),
              value: manyother.one,
              groupValue: _other,
              onChanged: (manyother? value) {
                setState(() {
                  _other = value;
                });
              }),
          const Divider(
            height: 0,
          ),
          RadioListTile<manyother>(
              title: Text('พิเศษ'),
              value: manyother.two,
              groupValue: _other,
              onChanged: (manyother? value) {
                setState(() {
                  _other = value;
                });
              }),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'อื่นๆ',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: 'เช่นไม่ใส่หัวหอม'),
            ),
          ),
          const Row(mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('จำนวน',style: TextStyle(fontSize: 20),),
              ),
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: _incrementCounter1,
                  tooltip: 'ลดจำนวน',
                  icon: const Icon(
                    Icons.remove,
                    size: 25,
                  )),
                   Text(
            '$_counter',
            style: TextStyle(fontSize: 25),
          ),
          IconButton(
              onPressed: _incrementCounter,
              tooltip: 'เพิ่มจำนวน',
              icon: const Icon(
                Icons.add,
                size: 25,
              )),
            ],
            
          ),
         
        ],
      ),
    );
  }
}

class kawpad extends StatelessWidget {
  const kawpad({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ข้าวผัด'),
      ),
      body: const datakawpad(),
    );
  }
}
enum meat1 {
  one,
  two,
  three,
  four,
  five,
  six,
  seven,
  eight,
  nine,
}
enum  egg1 {one,two}


class datakawpad extends StatefulWidget {
  const datakawpad({super.key});

  @override
  State<datakawpad> createState() => _datakawpadState();
}

class _datakawpadState extends State<datakawpad> {
  
    int _counter = 0;
  void _incrementCounter2() {
    setState(() {
      _counter++;
    });
  }

  void _incrementCounter3() {
    setState(() {
      _counter--;
    });
  }
  meat1? _character = meat1.one;
  egg? _ovum = egg.one;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'เนื้อสัตว์',
                  style: TextStyle(fontSize: 25),
                ),
              ],
            ),
          ),
          RadioListTile<meat1>(
              title: const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('หมูกรอบ'),SizedBox(width: 200,),
                  
                  Text('+10')
                  
                   
                ],
              ),
              value: meat1.one,
              groupValue: _character,
              onChanged: (meat1? value) {
                setState(() {
                  _character = value;
                });
              }),
               
              
          const Divider(
            height: 0,
          ),
          RadioListTile<meat1>(
              title: const Text('หมูชิ้น'),
              value: meat1.two,
              groupValue: _character,
              onChanged: (meat1? value) {
                setState(() {
                  _character = value;
                });
              }),
          const Divider(
            height: 0,
          ),
          RadioListTile<meat1>(
              title: Text('หมูสับ'),
              value: meat1.three,
              groupValue: _character,
              onChanged: (meat1? value) {
                setState(() {
                  _character = value;
                });
              }),
          const Divider(
            height: 0,
          ),
          RadioListTile<meat1>(
              title: Text('ไก่'),
              value: meat1.four,
              groupValue: _character,
              onChanged: (meat1? value) {
                setState(() {
                  _character = value;
                });
              }),
          const Divider(
            height: 0,
          ),
          RadioListTile<meat1>(
              title: Text('ทะเล'),
              value: meat1.five,
              groupValue: _character,
              onChanged: (meat1? value) {
                setState(() {
                  _character = value;
                });
              }),
          
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'อื่นๆ',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
          RadioListTile<egg>(
            title: Text('ไข่เจียว'),
            value: egg.one, groupValue: _ovum ,onChanged: (egg? value){
              setState(() {
                _ovum =value;
              });
            }),
            RadioListTile<egg>(
            title: Text('ไข่ดาว'),
            value: egg.two, 
            groupValue: _ovum ,onChanged: (egg? value){
              setState(() {
                _ovum =value;
              });
            }),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: 'เช่นไม่ใส่หัวหอม'),
            ),
          ),
          const Row(mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('จำนวน',style: TextStyle(fontSize: 20),),
              ),
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: _incrementCounter3,
                  tooltip: 'ลดจำนวน',
                  icon: const Icon(
                    Icons.remove,
                    size: 25,
                  )),
                   Text(
            '$_counter',
            style: TextStyle(fontSize: 25),
          ),
          IconButton(
              onPressed: _incrementCounter2,
              tooltip: 'เพิ่มจำนวน',
              icon: const Icon(
                Icons.add,
                size: 25,
              )),
            ],
            
          ),
         
        ],
      ),
    );
  }
}
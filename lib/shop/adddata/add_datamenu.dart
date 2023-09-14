import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Adddatamenu extends StatefulWidget {
  const Adddatamenu({super.key});

  @override
  State<Adddatamenu> createState() => _AdddatamenuState();
}

class _AdddatamenuState extends State<Adddatamenu> {
  TextEditingController namemenu = TextEditingController();
  TextEditingController Price = TextEditingController();
  
  final formKey = GlobalKey<FormState>();

   CollectionReference collectionUser =
      FirebaseFirestore.instance.collection("datamenu");

  sendUserDataToDB() async {
    if(formKey.currentState!.validate()){
       return collectionUser.doc().set({
'ชื่อเมนู':namemenu.text,
'ราคา': Price.text,


       });
    }
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('เพิ่มเมนูร้านค้า')),
      body: Form(
        key: formKey,
        child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(5, 20, 0, 0),
            child: TextFormField(controller: namemenu,
            decoration: const InputDecoration(
              labelText: 'ชื่อเมนู',
              hintText: 'ชื่อเมนู'
              
            ),validator: (value) {
              if(value == null || value.isEmpty){
                return ' กรุณากรอกชื่อเมนู';
              }return null;
            },),
          ),SizedBox(height: 10,),
          TextFormField(keyboardType: TextInputType.phone,
            controller: Price,
            decoration: const InputDecoration(
              hintText: 'ราคา',
              labelText: 'ราคา'
            
            ),
            validator: (value) {
            if(value == null || value.isEmpty){
              return ' กรุณากรอกราคา';
            }return null;
          },
          ),SizedBox(height: 10,),
          
          OutlinedButton(onPressed: (){
             sendUserDataToDB();
            // Navigator.push(context, MaterialPageRoute(builder: (context)=>MyNavigator1()));
          }, child: const Text('บันทึก'))
        ],
      ))
      
    );
  }
}
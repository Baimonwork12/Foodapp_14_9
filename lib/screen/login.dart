// ignore_for_file: use_build_context_synchronously

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:food_app/bottom_nav.dart';
import 'package:food_app/shop/adddata/add_datashop.dart';

import 'package:google_sign_in/google_sign_in.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  Future<UserCredential?> signInWithGoogleuser() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    if (googleUser == null) {
      // ไม่ได้ล็อกอินด้วย Google
      return null;
    }

    final GoogleSignInAuthentication googleAuth =
        await googleUser.authentication;
    final AuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    try {
      final UserCredential authResult =
          await FirebaseAuth.instance.signInWithCredential(credential);

      // เก็บข้อมูลผู้ใช้ลงใน Firebase
      final User user = authResult.user!;
      await saveUserDataToFirebase(user);
      Navigator.push(context, MaterialPageRoute(builder: (context)=> MyNavigator()));

      return authResult;
    } catch (e) {
      print(e);
      return null;
    }
  }
  

  Future<void> saveUserDataToFirebase(User user) async {
    final firestore = FirebaseFirestore.instance;
    // หรือใช้ FirebaseDatabase เมื่อใช้ Firebase Realtime Database
    final userData = {
      'email': user.email,
      'displayName': user.displayName,
      'photoURL': user.photoURL,
      // เพิ่มข้อมูลอื่น ๆ ที่คุณต้องการเก็บได้ตามต้องการ
    };

    try {
      await firestore.collection('users').doc(user.uid).set(userData);
    } catch (e) {
      print('เกิดข้อผิดพลาดในการบันทึกข้อมูล: $e');
    }
  }
  Future<UserCredential?> signInWithGoogleshop() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    if (googleUser == null) {
      // ไม่ได้ล็อกอินด้วย Google
      return null;
    }

    final GoogleSignInAuthentication googleAuth =
        await googleUser.authentication;
    final AuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    try {
      final UserCredential authResult =
          await FirebaseAuth.instance.signInWithCredential(credential);

      // เก็บข้อมูลผู้ใช้ลงใน Firebase
      final User user = authResult.user!;
      await saveUserDataToFirebase(user);
      Navigator.push(context, MaterialPageRoute(builder: (context)=> Adddatashop()));

      return authResult;
    } catch (e) {
      print(e);
      return null;
    }
  }
  

  Future<void> saveDataShop(User user) async {
    final firestore = FirebaseFirestore.instance;
    // หรือใช้ FirebaseDatabase เมื่อใช้ Firebase Realtime Database
    final userData = {
      'email': user.email,
      'displayName': user.displayName,
      'photoURL': user.photoURL,
      // เพิ่มข้อมูลอื่น ๆ ที่คุณต้องการเก็บได้ตามต้องการ
    };

    try {
      await firestore.collection('Shop').doc(user.uid).set(userData);
    } catch (e) {
      print('เกิดข้อผิดพลาดในการบันทึกข้อมูล: $e');
    }
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [ 
            
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('images/logo.png'),
            ),
             OutlinedButton(
            onPressed: () async {
              await signInWithGoogleuser();
            },
            child:  Text('Log in with Google ลูกค้า',style:TextStyle(fontSize: 20),)),
          SizedBox(height: 20,),
            OutlinedButton(
            onPressed: () async {
              await signInWithGoogleshop();
            },
            child:  Text('Log in with Google ร้านค้า',style:TextStyle(fontSize: 20),))
         
          ],
        ),
      )
    );
  }
}

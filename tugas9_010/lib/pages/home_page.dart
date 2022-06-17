import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Homepagelogin extends StatefulWidget {
  const Homepagelogin({Key? key}) : super(key: key);

  @override
  State<Homepagelogin> createState() => _HomePageState();
}

class _HomePageState extends State<Homepagelogin> {
  final User = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Signed In as:' + User.email!),
          MaterialButton(
            onPressed: () {
              FirebaseAuth.instance.signOut();
            },
            color: Colors.orange,
            child: Text('Sign Out'),
          )
        ],
      ),
    ));
  }
}

import 'package:flutter/material.dart';
import 'package:tugas9_010/pages/login_page.dart';
import 'package:tugas9_010/pages/main_menu.dart';
import 'package:tugas9_010/pages/register_page.dart';

class firstPage extends StatelessWidget {
  const firstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/bintang.png'), fit: BoxFit.cover)),
        child: SafeArea(
            child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/word.png',
                  height: 150,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 3,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => LoginPage(
                                  showRegisterPage: () {},
                                )),
                      );
                    },
                    child: const Text('Login'),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 3,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RegisterPage(
                                  showLoginPage: () {},
                                )),
                      );
                    },
                    child: const Text('Sign Up'),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 3,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const MainMenu()),
                      );
                    },
                    child: const Text('Guest'),
                  ),
                ),
              ],
            ),
          ),
        )),
      ),
    );
  }
}

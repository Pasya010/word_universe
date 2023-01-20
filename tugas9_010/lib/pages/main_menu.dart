import 'package:flutter/material.dart';
import 'package:tugas9_010/page/home_page.dart';
import 'package:tugas9_010/pages/credit.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({Key? key}) : super(key: key);

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
                            builder: (context) => const HomePage()),
                      );
                    },
                    child: const Text('Play'),
                  ),
                ),
                                SizedBox(
                  width: MediaQuery.of(context).size.width / 3,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CreditPage()),
                      );
                    },
                    child: const Text('Credit'),
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

import 'package:flutter/material.dart';
import 'package:tugas9_010/page/home_page.dart';

class CreditPage extends StatelessWidget {
  const CreditPage({Key? key}) : super(key: key);

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
                    child: RichText(
                      text: TextSpan(
                        text: 'KELOMPOK 1:',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    )),
                    SizedBox(
                    width: MediaQuery.of(context).size.width / 3,
                    child: RichText(
                      text: TextSpan(
                        text: '- Dio Septian',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    )),
                    SizedBox(
                    width: MediaQuery.of(context).size.width / 3,
                    child: RichText(
                      text: TextSpan(
                        text: '- M Pasya Nugraha',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    )),
                    SizedBox(
                    width: MediaQuery.of(context).size.width / 3,
                    child: RichText(
                      text: TextSpan(
                        text: '- Alfarrel Putra D.S',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    )),
                    SizedBox(
                    width: MediaQuery.of(context).size.width / 3,
                    child: RichText(
                      text: TextSpan(
                        text: '- Kevin Aditama',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    )),
                    SizedBox(
                    width: MediaQuery.of(context).size.width / 3,
                    child: RichText(
                      text: TextSpan(
                        text: '- Septwu M Rizki',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    )),
              ],
            ),
          ),
        )),
      ),
    );
  }
}
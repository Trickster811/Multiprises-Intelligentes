import 'package:flutter/material.dart';
import 'package:multiprises_intelligentes/utils.dart';
import 'package:multiprises_intelligentes/welcome_pages/auth/signin_page.dart';
import 'package:multiprises_intelligentes/welcome_pages/start_page.dart';

class AppStartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        children: [
          Spacer(),
          Text(
            'MultiPrises\nIntelligentes',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 35,
              fontWeight: FontWeight.bold,
            ),
          ),
          // SizedBox(
          //   height: 50,
          // ),
          // Container(
          //   height: 50,
          //   width: 50,
          //   decoration: BoxDecoration(
          //     color: Colors.white,
          //     borderRadius: BorderRadius.circular(1000),
          //   ),
          //   child: Icon(
          //     Icons.arrow_downward,
          //     color: primaryColor,
          //   ),
          // ),
          Spacer(),
          Container(
            height: 50,
            margin: EdgeInsets.symmetric(horizontal: 10.0),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.white,
              ),
              borderRadius: BorderRadius.circular(1000),
            ),
            child: InkWell(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyHomePage(),
                  ),
                );
              },
              child: Text(
                'Offline Mode',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 50,
            margin: EdgeInsets.symmetric(horizontal: 10.0),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(1000),
            ),
            child: InkWell(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignInSceen(),
                  ),
                );
              },
              child: Text(
                'Online Mode',
                style: TextStyle(
                  color: primaryColor,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}

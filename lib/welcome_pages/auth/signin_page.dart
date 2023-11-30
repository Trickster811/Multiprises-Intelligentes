import 'package:flutter/material.dart';
import 'package:multiprises_intelligentes/utils.dart';
import 'package:multiprises_intelligentes/welcome_pages/start_page.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignInSceen extends StatelessWidget {
  final signInIdentifier = TextEditingController();
  final signInReference = TextEditingController();
  final signInPassword = TextEditingController();
  final signInFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            // right: MediaQuery.of(context).size.width * .01,
            // bottom: -MediaQuery.of(context).size.width * .9,
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: SvgPicture.asset(
                'assets/images/signInBackground.svg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SafeArea(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: 100,
                    ),
                    Text(
                      'MultiPrises\nIntelligentes',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: primaryColor,
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Container(
                      height: 10,
                      width: 150,
                      decoration: BoxDecoration(
                        color: primaryColor,
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      'Sign In',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: primaryColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Form(
                      key: signInFormKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Identifier',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                          Container(
                            height: 60,
                            alignment: Alignment.center,
                            padding: EdgeInsets.symmetric(
                              horizontal: 10.0,
                            ),
                            margin: EdgeInsets.symmetric(
                              vertical: 10.0,
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.white,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: TextFormField(
                              controller: signInIdentifier,
                              style: TextStyle(
                                color: Colors.white,
                              ),
                              decoration: InputDecoration(
                                hintText: 'identifier',
                                hintStyle: TextStyle(
                                  color: Colors.white,
                                ),
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Reference',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                          Container(
                            height: 60,
                            alignment: Alignment.center,
                            padding: EdgeInsets.symmetric(
                              horizontal: 10.0,
                            ),
                            margin: EdgeInsets.symmetric(
                              vertical: 10.0,
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.white,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: TextFormField(
                              controller: signInReference,
                              style: TextStyle(
                                color: Colors.white,
                              ),
                              decoration: InputDecoration(
                                hintText: 'reference',
                                hintStyle: TextStyle(
                                  color: Colors.white,
                                ),
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Password',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                          Container(
                            height: 60,
                            alignment: Alignment.center,
                            padding: EdgeInsets.symmetric(
                              horizontal: 10.0,
                            ),
                            margin: EdgeInsets.symmetric(
                              vertical: 10.0,
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.white,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: TextFormField(
                              controller: signInPassword,
                              obscureText: true,
                              style: TextStyle(
                                color: Colors.white,
                              ),
                              decoration: InputDecoration(
                                hintText: 'password',
                                hintStyle: TextStyle(
                                  color: Colors.white,
                                ),
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MyHomePage(),
                                ),
                              );
                            },
                            child: Container(
                              height: 60,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Text(
                                'Sign In',
                                style: TextStyle(
                                    color: primaryColor,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

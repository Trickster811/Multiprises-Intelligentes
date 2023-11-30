import 'package:flutter/material.dart';
import 'package:multiprises_intelligentes/utils.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool sundayController = false;
  bool mondayController = false;
  bool tuesdayController = false;
  bool wednesdayController = false;
  bool thursdayController = false;
  bool fridayController = false;
  bool saturdayController = false;
  bool repeatController = false;
  bool buttonState = false;

  final scheduleHourEndController = TextEditingController();
  final scheduleHourStartController = TextEditingController();
  final scheduleFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buttonState
                  ? Container()
                  : Container(
                      height: 250,
                      width: double.maxFinite,
                      padding: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: primaryColor,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Form(
                        key: scheduleFormKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Time'),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      'Start',
                                    ),
                                    SizedBox(
                                      height: 10.0,
                                    ),
                                    Container(
                                      height: 40,
                                      width: 100,
                                      alignment: Alignment.center,
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 10.0,
                                      ),
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: primaryColor,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      child: TextFormField(
                                        controller: scheduleHourStartController,
                                        keyboardType: TextInputType.number,
                                        decoration: InputDecoration(
                                          contentPadding: EdgeInsets.symmetric(
                                            vertical: 10,
                                          ),
                                          hintText: '...',
                                          enabledBorder: InputBorder.none,
                                          focusedBorder: InputBorder.none,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      'End',
                                    ),
                                    SizedBox(
                                      height: 10.0,
                                    ),
                                    Container(
                                      height: 40,
                                      width: 100,
                                      alignment: Alignment.center,
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 10.0,
                                      ),
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: primaryColor,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      child: TextFormField(
                                        controller: scheduleHourEndController,
                                        keyboardType: TextInputType.number,
                                        decoration: InputDecoration(
                                          contentPadding: EdgeInsets.symmetric(
                                            vertical: 10,
                                          ),
                                          hintText: '...',
                                          enabledBorder: InputBorder.none,
                                          focusedBorder: InputBorder.none,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Every'),
                              ],
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      sundayController = !sundayController;
                                    });
                                  },
                                  child: Container(
                                    height: 30.0,
                                    width: 30.0,
                                    margin: EdgeInsets.symmetric(
                                      horizontal: 5.0,
                                    ),
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: sundayController
                                          ? primaryColor
                                          : Colors.transparent,
                                      border: Border.all(
                                          color: sundayController
                                              ? Colors.transparent
                                              : primaryColor),
                                      borderRadius: BorderRadius.circular(1000),
                                    ),
                                    child: Text(
                                      'S',
                                      style: TextStyle(
                                        color: sundayController
                                            ? Colors.white
                                            : primaryColor,
                                      ),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      mondayController = !mondayController;
                                    });
                                  },
                                  child: Container(
                                    height: 30.0,
                                    width: 30.0,
                                    margin: EdgeInsets.symmetric(
                                      horizontal: 5.0,
                                    ),
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: mondayController
                                          ? primaryColor
                                          : Colors.transparent,
                                      border: Border.all(
                                          color: mondayController
                                              ? Colors.transparent
                                              : primaryColor),
                                      borderRadius: BorderRadius.circular(1000),
                                    ),
                                    child: Text(
                                      'M',
                                      style: TextStyle(
                                        color: mondayController
                                            ? Colors.white
                                            : primaryColor,
                                      ),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      tuesdayController = !tuesdayController;
                                    });
                                  },
                                  child: Container(
                                    height: 30.0,
                                    width: 30.0,
                                    margin: EdgeInsets.symmetric(
                                      horizontal: 5.0,
                                    ),
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: tuesdayController
                                          ? primaryColor
                                          : Colors.transparent,
                                      border: Border.all(
                                          color: tuesdayController
                                              ? Colors.transparent
                                              : primaryColor),
                                      borderRadius: BorderRadius.circular(1000),
                                    ),
                                    child: Text(
                                      'T',
                                      style: TextStyle(
                                        color: tuesdayController
                                            ? Colors.white
                                            : primaryColor,
                                      ),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      wednesdayController =
                                          !wednesdayController;
                                    });
                                  },
                                  child: Container(
                                    height: 30.0,
                                    width: 30.0,
                                    margin: EdgeInsets.symmetric(
                                      horizontal: 5.0,
                                    ),
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: wednesdayController
                                          ? primaryColor
                                          : Colors.transparent,
                                      border: Border.all(
                                          color: wednesdayController
                                              ? Colors.transparent
                                              : primaryColor),
                                      borderRadius: BorderRadius.circular(1000),
                                    ),
                                    child: Text(
                                      'W',
                                      style: TextStyle(
                                        color: wednesdayController
                                            ? Colors.white
                                            : primaryColor,
                                      ),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      thursdayController = !thursdayController;
                                    });
                                  },
                                  child: Container(
                                    height: 30.0,
                                    width: 30.0,
                                    margin: EdgeInsets.symmetric(
                                      horizontal: 5.0,
                                    ),
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: thursdayController
                                          ? primaryColor
                                          : Colors.transparent,
                                      border: Border.all(
                                          color: thursdayController
                                              ? Colors.transparent
                                              : primaryColor),
                                      borderRadius: BorderRadius.circular(1000),
                                    ),
                                    child: Text(
                                      'T',
                                      style: TextStyle(
                                        color: thursdayController
                                            ? Colors.white
                                            : primaryColor,
                                      ),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      fridayController = !fridayController;
                                    });
                                  },
                                  child: Container(
                                    height: 30.0,
                                    width: 30.0,
                                    margin: EdgeInsets.symmetric(
                                      horizontal: 5.0,
                                    ),
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: fridayController
                                          ? primaryColor
                                          : Colors.transparent,
                                      border: Border.all(
                                          color: fridayController
                                              ? Colors.transparent
                                              : primaryColor),
                                      borderRadius: BorderRadius.circular(1000),
                                    ),
                                    child: Text(
                                      'F',
                                      style: TextStyle(
                                        color: fridayController
                                            ? Colors.white
                                            : primaryColor,
                                      ),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      saturdayController = !saturdayController;
                                    });
                                  },
                                  child: Container(
                                    height: 30.0,
                                    width: 30.0,
                                    margin: EdgeInsets.symmetric(
                                      horizontal: 5.0,
                                    ),
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: saturdayController
                                          ? primaryColor
                                          : Colors.transparent,
                                      border: Border.all(
                                          color: saturdayController
                                              ? Colors.transparent
                                              : primaryColor),
                                      borderRadius: BorderRadius.circular(1000),
                                    ),
                                    child: Text(
                                      'S',
                                      style: TextStyle(
                                        color: saturdayController
                                            ? Colors.white
                                            : primaryColor,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Repeat'),
                                SizedBox(
                                  width: 10.0,
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      repeatController = !repeatController;
                                    });
                                  },
                                  child: Container(
                                    height: 20,
                                    width: 40,
                                    alignment: repeatController
                                        ? Alignment.centerRight
                                        : Alignment.centerLeft,
                                    padding: EdgeInsets.all(2.0),
                                    decoration: BoxDecoration(
                                      color: repeatController
                                          ? primaryColor
                                          : primaryColor.withOpacity(.2),
                                      border: Border.all(
                                        color: primaryColor,
                                      ),
                                      borderRadius: BorderRadius.circular(
                                        1000,
                                      ),
                                    ),
                                    child: Container(
                                      height: 20.0,
                                      width: 15.0,
                                      decoration: BoxDecoration(
                                        color: repeatController
                                            ? Colors.white
                                            : primaryColor,
                                        borderRadius:
                                            BorderRadius.circular(1000),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 40,
                                  width: 150,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: primaryColor,
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Text(
                                    'Apply',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
              SizedBox(
                height: 20.0,
              ),
              buttonState
                  ? Text(
                      'Click to stop watching',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  : Text(
                      'Click to start watching',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    buttonState = !buttonState;
                  });
                },
                child: Container(
                  height: 150,
                  width: 150,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: buttonState ? Colors.green : primaryColor,
                    borderRadius: BorderRadius.circular(1000000),
                    border: Border.all(
                      color: buttonState
                          ? Colors.greenAccent
                          : Color.fromARGB(255, 124, 7, 7),
                      width: 4,
                    ),
                  ),
                  child: Text(
                    buttonState ? 'Watching' : 'Start',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'STATUS : ',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  buttonState
                      ? Text(
                          'ON',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                          ),
                        )
                      : Text(
                          'OFF',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: primaryColor,
                          ),
                        ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

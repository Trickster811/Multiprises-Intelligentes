import 'dart:math';

import 'package:flutter/material.dart';

class LogsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 10.0,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            logsBuilder(
              '[4:45 PM] ',
              'Connection Started',
              Colors.black,
            ),
            logsBuilder(
              '[4:46 PM] ',
              'Testing Connection To Database',
              Colors.black,
            ),
            logsBuilder(
              '[4:48 PM] ',
              'Redirecting',
              Colors.black,
            ),
            logsBuilder(
              '[4:48 PM] ',
              'Working on it',
              Colors.black,
            ),
            logsBuilder(
              '[4:49 PM] ',
              'Getting Informations',
              Colors.black,
            ),
            logsBuilder(
              '[4:53 PM] ',
              'Connection Enabled',
              Colors.green,
            ),
          ],
        ),
      ),
    );
  }

  Widget logsBuilder(String logTime, String logDescription, Color logColor) {
    return Container(
      height: 30,
      margin: EdgeInsets.only(
        bottom: 5,
      ),
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(
          10,
        ),
        boxShadow: [
          BoxShadow(
            blurRadius: 1,
            blurStyle: BlurStyle.outer,
            spreadRadius: 1,
            color: Colors.black12,
          ),
        ],
      ),
      child: Row(
        children: [
          Text(logTime),
          Expanded(
            child: Text(
              logDescription,
              style: TextStyle(
                color: logColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

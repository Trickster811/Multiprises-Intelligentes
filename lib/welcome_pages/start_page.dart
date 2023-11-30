import 'package:flutter/material.dart';
import 'package:multiprises_intelligentes/screens/home_page.dart';
import 'package:multiprises_intelligentes/screens/logs_page.dart';
import 'package:multiprises_intelligentes/screens/manage_page.dart';
import 'package:multiprises_intelligentes/screens/new_configuration_page.dart';
import 'package:multiprises_intelligentes/utils.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentState = 0;
  @override
  Widget build(BuildContext context) {
    final List screensList = [
      HomeScreen(),
      ManageScreen(),
      LogsScreen(),
    ];
    final List screensPageTitle = [
      'Home',
      'Manage',
      'Logs',
    ];
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        backgroundColor: primaryColor,
        elevation: 0,
        // automaticallyImplyLeading: false,
        title: Text(
          screensPageTitle[currentState],
          style: TextStyle(
            fontSize: 24,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.logout_rounded,
            ),
          ),
        ],
      ),
      drawer: Drawer(
        width: MediaQuery.of(context).size.width * 0.9,
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.33333,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(10),
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(),
            ),
            Container(
              height: 50,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(10),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: screensList[currentState],
            ),
            // Bottom Navigation Bar
            Container(
              height: 50,
              width: 250,
              margin: EdgeInsets.only(
                bottom: 20,
                left: 20,
              ),
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(10000),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        currentState = 0;
                      });
                    },
                    icon: Icon(
                      Icons.home_filled,
                    ),
                    iconSize: 30,
                    color: Colors.white,
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        currentState = 1;
                      });
                    },
                    icon: Icon(
                      Icons.bar_chart_rounded,
                    ),
                    iconSize: 30,
                    color: Colors.white,
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        currentState = 2;
                      });
                    },
                    icon: Icon(
                      Icons.manage_history,
                    ),
                    iconSize: 30,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => NewConfigurationScreen(),
            ),
          );
        },
        tooltip: 'New Configuration',
        backgroundColor: primaryColor,
        child: Icon(Icons.settings),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

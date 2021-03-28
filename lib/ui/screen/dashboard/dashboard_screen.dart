import 'dart:ui';

import 'package:first_flutter_app/ui/screen/notification/notification_screen.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:carousel_slider/carousel_slider.dart';

class DashboardScreen extends StatefulWidget {
  DashboardScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          elevation: 0,
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              /*
              DrawerHeader(
                // Icon(Icons.account_circle, color: Colors.white),
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text(
                  'Menu',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),*/
              UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text("AC"),
                ),
                accountName: Text("My Account"),
                accountEmail: Text("account@gmail.com"),
                decoration: BoxDecoration(color: Colors.blue),
              ),
              ListTile(
                leading: Icon(Icons.dashboard),
                title: Text('Dashboard'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DashboardScreen()),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.credit_card),
                title: Text('Account'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
                onTap: () {},
              ),
            ],
          ),
        ),
        appBar: AppBar(
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),
          title: Center(
            child: Text("Dashboard"),
          ),
          actions: <Widget>[
            IconButton(
                icon: const Icon(Icons.notifications),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => NotificationScreen()),
                  );
                })
          ],
        ),
        body: SafeArea(
          top: true,
          bottom: true,
          child: Container(
            padding: EdgeInsets.all(12),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "List of Account",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ),
                  CarouselSlider(
                    options: CarouselOptions(
                      height: 100,
                    ),
                    items: [
                      Expanded(
                        child: Center(
                          child: Card(
                            child: ListTile(
                              title: Text(
                                'Bank Account',
                              ),
                              subtitle: Text(
                                NumberFormat.simpleCurrency(locale: 'en')
                                    .format(2500),
                              ),
                              onTap: () {},
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: Card(
                            child: ListTile(
                              title: Text('Credit Card'),
                              subtitle: Text(
                                  NumberFormat.simpleCurrency(locale: 'en')
                                      .format(1500)),
                              onTap: () {},
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: Card(
                            child: ListTile(
                              title: Text('Cash'),
                              subtitle: Text(
                                  NumberFormat.simpleCurrency(locale: 'en')
                                      .format(800)),
                              onTap: () {},
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  // Balance
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          elevation: 1,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Container(
                            height: 100,
                          ),
                        ),
                      ),
                      Card(
                        elevation: 4,
                        margin: EdgeInsets.only(bottom: 24.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: ListTile(
                          contentPadding: EdgeInsets.all(16.0),
                          title: Center(
                            child: Text(
                              NumberFormat.simpleCurrency(locale: 'en')
                                  .format(4800),
                              style: TextStyle(fontSize: 32),
                            ),
                          ),
                          subtitle: Center(
                              child: Text(
                            "Total Balance",
                            style: TextStyle(fontSize: 16),
                          )),
                          onTap: () {},
                        ),
                      ),
                    ],
                  ),

                  // Last Records Overview
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Last Records Overview",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ),

                  Card(
                    child: ListTile(
                      title: Text("Groceries"),
                      subtitle: Text("Credit Card"),
                      leading: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.shopping_cart),
                      ),
                      trailing: Column(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 8.0, bottom: 3.0),
                            child: Text("Today"),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 3.0, bottom: 8.0),
                            child: Text(
                                NumberFormat.simpleCurrency(locale: 'en')
                                    .format(250)),
                          ),
                        ],
                      ),
                      onTap: () {},
                    ),
                  ),
                  Card(
                    child: ListTile(
                      title: Text("Clothes"),
                      subtitle: Text("Credit Card"),
                      leading: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.checkroom),
                      ),
                      trailing: Column(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 8.0, bottom: 3.0),
                            child:
                                Text(DateFormat.yMd().format(DateTime.now())),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 3.0, bottom: 8.0),
                            child: Text(
                                NumberFormat.simpleCurrency(locale: 'en')
                                    .format(100)),
                          ),
                        ],
                      ),
                      onTap: () {},
                    ),
                  ),
                  Card(
                    child: ListTile(
                      title: Text("Rental"),
                      subtitle: Text("Cash"),
                      leading: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.add_business),
                      ),
                      trailing: Column(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 8.0, bottom: 3.0),
                            child:
                                Text(DateFormat.yMd().format(DateTime.now())),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 3.0, bottom: 8.0),
                            child: Text(
                                NumberFormat.simpleCurrency(locale: 'en')
                                    .format(500)),
                          ),
                        ],
                      ),
                      onTap: () {},
                    ),
                  ),
                  Card(
                    child: ListTile(
                      title: Text("Eat"),
                      subtitle: Text("Cash"),
                      leading: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.fastfood),
                      ),
                      trailing: Column(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 8.0, bottom: 3.0),
                            child:
                                Text(DateFormat.yMd().format(DateTime.now())),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 3.0, bottom: 8.0),
                            child: Text(
                                NumberFormat.simpleCurrency(locale: 'en')
                                    .format(500)),
                          ),
                        ],
                      ),
                      onTap: () {},
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}

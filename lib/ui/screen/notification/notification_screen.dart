import 'package:first_flutter_app/ui/screen/dashboard/dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class NotificationScreen extends StatefulWidget {
  NotificationScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          elevation: 0,
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
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
            child: Text("Notifications"),
          ),
          actions: <Widget>[
            IconButton(icon: const Icon(Icons.notifications), onPressed: () {})
          ],
        ),
        body: SafeArea(
          top: true,
          bottom: true,
          child: SingleChildScrollView(
            padding: EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                  child: ListTile(
                    title: RichText(
                        text: TextSpan(children: <TextSpan>[
                      TextSpan(
                          text: "You received a payment of ",
                          style: TextStyle(
                            color: Colors.grey,
                          )),
                      TextSpan(
                          text: NumberFormat.simpleCurrency(locale: 'en')
                              .format(120),
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.bold)),
                      TextSpan(
                          text: " from ",
                          style: TextStyle(
                            color: Colors.grey,
                          )),
                      TextSpan(
                          text: "Jhon Smith",
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.bold)),
                    ])),
                    subtitle: Text(DateFormat.yMd().format(DateTime.now())),
                    leading: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundColor: Colors.blue,
                          foregroundColor: Colors.white,
                          child: Text("JS"),
                        )),
                    onTap: () {},
                  ),
                ),
                Card(
                  child: ListTile(
                    title: RichText(
                        text: TextSpan(children: <TextSpan>[
                      TextSpan(
                          text: "You received a payment of ",
                          style: TextStyle(
                            color: Colors.grey,
                          )),
                      TextSpan(
                          text: NumberFormat.simpleCurrency(locale: 'en')
                              .format(120),
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.bold)),
                      TextSpan(
                          text: " from ",
                          style: TextStyle(
                            color: Colors.grey,
                          )),
                      TextSpan(
                          text: "Jhon Smith",
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.bold)),
                    ])),
                    subtitle: Text(DateFormat.yMd().format(DateTime.now())),
                    leading: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundColor: Colors.blue,
                          foregroundColor: Colors.white,
                          child: Text("JS"),
                        )),
                    onTap: () {},
                  ),
                ),
                Card(
                  child: ListTile(
                    title: RichText(
                        text: TextSpan(children: <TextSpan>[
                      TextSpan(
                          text: "You received a payment of ",
                          style: TextStyle(
                            color: Colors.grey,
                          )),
                      TextSpan(
                          text: NumberFormat.simpleCurrency(locale: 'en')
                              .format(120),
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.bold)),
                      TextSpan(
                          text: " from ",
                          style: TextStyle(
                            color: Colors.grey,
                          )),
                      TextSpan(
                          text: "Jhon Smith",
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.bold)),
                    ])),
                    subtitle: Text(DateFormat.yMd().format(DateTime.now())),
                    leading: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundColor: Colors.blue,
                          foregroundColor: Colors.white,
                          child: Text("JS"),
                        )),
                    onTap: () {},
                  ),
                ),
                Card(
                  child: ListTile(
                    title: RichText(
                        text: TextSpan(children: <TextSpan>[
                      TextSpan(
                          text: "You received a payment of ",
                          style: TextStyle(
                            color: Colors.grey,
                          )),
                      TextSpan(
                          text: NumberFormat.simpleCurrency(locale: 'en')
                              .format(120),
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.bold)),
                      TextSpan(
                          text: " from ",
                          style: TextStyle(
                            color: Colors.grey,
                          )),
                      TextSpan(
                          text: "Jhon Smith",
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.bold)),
                    ])),
                    subtitle: Text(DateFormat.yMd().format(DateTime.now())),
                    leading: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundColor: Colors.blue,
                          foregroundColor: Colors.white,
                          child: Text("JS"),
                        )),
                    onTap: () {},
                  ),
                ),
                Card(
                  child: ListTile(
                    title: RichText(
                        text: TextSpan(children: <TextSpan>[
                      TextSpan(
                          text: "You received a payment of ",
                          style: TextStyle(
                            color: Colors.grey,
                          )),
                      TextSpan(
                          text: NumberFormat.simpleCurrency(locale: 'en')
                              .format(120),
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.bold)),
                      TextSpan(
                          text: " from ",
                          style: TextStyle(
                            color: Colors.grey,
                          )),
                      TextSpan(
                          text: "Jhon Smith",
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.bold)),
                    ])),
                    subtitle: Text(DateFormat.yMd().format(DateTime.now())),
                    leading: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundColor: Colors.blue,
                          foregroundColor: Colors.white,
                          child: Text("JS"),
                        )),
                    onTap: () {},
                  ),
                ),
                Card(
                  child: ListTile(
                    title: RichText(
                        text: TextSpan(children: <TextSpan>[
                      TextSpan(
                          text: "You received a payment of ",
                          style: TextStyle(
                            color: Colors.grey,
                          )),
                      TextSpan(
                          text: NumberFormat.simpleCurrency(locale: 'en')
                              .format(120),
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.bold)),
                      TextSpan(
                          text: " from ",
                          style: TextStyle(
                            color: Colors.grey,
                          )),
                      TextSpan(
                          text: "Jhon Smith",
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.bold)),
                    ])),
                    subtitle: Text(DateFormat.yMd().format(DateTime.now())),
                    leading: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundColor: Colors.blue,
                          foregroundColor: Colors.white,
                          child: Text("JS"),
                        )),
                    onTap: () {},
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

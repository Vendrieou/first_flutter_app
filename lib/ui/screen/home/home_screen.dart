import 'package:first_flutter_app/ui/widgets/fab_bottom_app_bar.dart';
import 'package:first_flutter_app/ui/widgets/fab_with_icons.dart';
import 'layout.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<HomeScreen> with TickerProviderStateMixin {
  String _lastSelected = 'TAB: 0';

  void _selectedTab(int index) {
    setState(() {
      _lastSelected = 'TAB: $index';
    });
  }

  void _selectedFab(int index) {
    setState(() {
      _lastSelected = 'FAB: $index';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(widget.title),
      // ),
      body: Center(
        child: Text(
          _lastSelected,
          style: TextStyle(fontSize: 32.0),
        ),
      ),
      bottomNavigationBar: FABBottomAppBar(
        centerItemText: '',
        color: Colors.grey[400],
        selectedColor: Colors.blue,
        notchedShape: CircularNotchedRectangle(),
        onTabSelected: _selectedTab,
        items: [
          FABBottomAppBarItem(iconData: Icons.home, text: ''),
          FABBottomAppBarItem(iconData: Icons.analytics, text: ''),
          FABBottomAppBarItem(iconData: Icons.credit_card, text: ''),
          FABBottomAppBarItem(iconData: Icons.account_circle, text: ''),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: _buildFab(context),
    );
  }

  Widget _buildFab(BuildContext context) {
    final icons = [Icons.sms, Icons.mail, Icons.phone];
    var anchoredOverlay = AnchoredOverlay(
      showOverlay: true,
      overlayBuilder: (context, offset) {
        return CenterAbout(
          position: Offset(offset.dx, offset.dy - icons.length * 35.0),
          child: FabWithIcons(
            icons: icons,
            onIconTapped: _selectedFab,
          ),
        );
      },
      child: SizedBox(
        width: 70.0,
        child: FloatingActionButton(
          onPressed: () {},
          tooltip: 'Add Transaction',
          child: Icon(Icons.add),
          elevation: 2.0,
        ),
      ),
    );
    return anchoredOverlay;
  }
}

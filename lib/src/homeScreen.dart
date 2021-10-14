import 'package:famile_massenger/src/loginScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:connectycube_sdk/connectycube_sdk.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
        title: Text(
          "Messanges",
          style: TextStyle(color: Colors.white),
        ),
      ),
      drawer: Drawer(
          backgroundColor: Colors.white,
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                  margin: EdgeInsets.zero,
                  padding: EdgeInsets.zero,
                  child: UserAccountsDrawerHeader(
                    currentAccountPicture: Container(
                        decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    )),
                    decoration:
                        BoxDecoration(color: Theme.of(context).primaryColor),
                    accountName: Text("UserName"),
                    accountEmail: Text("Phone"),
                  )),
              ListTile(
                  title: new Text("О себе"),
                  leading: Icon(Icons.account_circle_sharp),
                  onTap: () {}),
              ListTile(
                  title: Text("Настройки"),
                  leading: Icon(Icons.settings_sharp),
                  onTap: () {}),
              ListTile(
                  title: Text("Выход"),
                  leading: Icon(Icons.login_sharp),
                  onTap: () {
                    FirebaseAuth.instance.signOut();
                    signOut().then((voidResult) {}).catchError((error) {});
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (c) => LoginScreen()));
                  })
            ],
          )),
    );
  }
}

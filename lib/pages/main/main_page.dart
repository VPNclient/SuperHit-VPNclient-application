import 'package:super_hit/pages/main/apps_btn.dart';
import 'package:super_hit/pages/main/servers_btn.dart';
import 'package:super_hit/pages/main/subscription_status.dart';
import 'package:super_hit/pages/main/app_bar.dart';
import 'package:super_hit/pages/main/main_btn.dart';

import 'package:flutter/material.dart';
import '../support_btn.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.surface,
        toolbarHeight: 80,
        actions: [CustomAppBar()],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height - 220,
        margin: const EdgeInsets.only(top: 60),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [SubscriptionStatus(), AppsBtn(), ServersBtn()],
            ),
            MainBtn(),
            SupportBtn(),
          ],
        ),
      ),
    );
  }
}

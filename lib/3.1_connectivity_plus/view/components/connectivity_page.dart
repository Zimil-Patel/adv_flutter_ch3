import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

import 'bottom_navigation.dart';
import 'offline_content.dart';
import 'online_content.dart';

class ConnectivityPage extends StatelessWidget {
  const ConnectivityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('Connectivity Example', style: TextStyle(fontWeight: FontWeight.w500),),
        centerTitle: true,
      ),
      bottomNavigationBar: const BottomNavigation(),
      body: StreamBuilder(
        stream: Connectivity().onConnectivityChanged,
        builder: (context, snapshot) {
          if (snapshot.data!.contains(ConnectivityResult.mobile) ||
              snapshot.data!.contains(ConnectivityResult.wifi)) {
            // RETURN THE WIDGET WHEN DEVICE IS CONNECTED TO MOBILE DATA OR WIFI
            return const OnlineContent();
          } else {
            // RETURN THE WIDGET WHEN DEVICE IS NOT CONNECTED TO MOBILE DATA OR WIFI
            return const OfflineContent();
          }
        },
      ),
    );
  }
}



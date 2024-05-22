import 'package:adv_flutter_ch3/constants.dart';
import 'package:adv_flutter_ch3/globla_app/view/components/list_wheel_scroll_view.dart';
import 'package:flutter/material.dart';

class GlobalApp extends StatelessWidget {
  const GlobalApp({super.key});

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          scrolledUnderElevation: 0,
          title: const Text(
            'Tasks List',
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        body: const ListScrollView(),
      ),
    );
  }
}

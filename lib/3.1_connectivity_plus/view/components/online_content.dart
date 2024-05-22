import 'package:flutter/material.dart';

class OnlineContent extends StatelessWidget {
  const OnlineContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FlutterLogo(size: 50,),
          SizedBox(width: 20,),
          Text('Congratulation...\nYou are Online!', style: TextStyle(color: Colors.green, fontSize: 16),),
        ],
      ),
    );
  }
}

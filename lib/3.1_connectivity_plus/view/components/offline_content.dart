import 'package:flutter/material.dart';

class OfflineContent extends StatelessWidget {
  const OfflineContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: [
          NoInternetMessage(),
          NoInternetGIF(),
          TryAgainButton(),
        ],
      ),
    );
  }
}

class TryAgainButton extends StatelessWidget {
  const TryAgainButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Colors.deepPurpleAccent.withOpacity(0.5),
          borderRadius: BorderRadius.circular(10)
      ),
      child: const Text('Try Again', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.white,),),
    );
  }
}

class NoInternetGIF extends StatelessWidget {
  const NoInternetGIF({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 350,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              'assets/no_internet.gif',
              fit: BoxFit.cover,
            ),
          ],
        ));
  }
}

class NoInternetMessage extends StatelessWidget {
  const NoInternetMessage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              vertical: 20.0, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'oh no!',
                style: TextStyle(
                    fontSize: 30, fontWeight: FontWeight.w500),
              ),
              Text(
                  'no internet connection.\ncheck your network and try again.',
                  style: TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w400)),
            ],
          ),
        ),
      ],
    );
  }
}
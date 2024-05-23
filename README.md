# Advance Flutter Chapter 3


## ✔️ 3.1 connectivity_plus [📂 (source)](https://github.com/Zimil-Patel/adv_flutter_ch3/tree/master/lib/3.1_connectivity_plus/view)

### Connectivity Plus Package Documentation for GitHub

The `connectivity_plus` package is a Flutter plugin that provides a way to check the network connectivity status of the device. This package supports checking for connectivity to mobile data and WiFi networks, and allows listening for changes in connectivity status.

### Installation
To use `connectivity_plus`, add it to your `pubspec.yaml` file:

```yaml
dependencies:
  connectivity_plus: ^3.0.3
```

Then, run `flutter pub get` to install the package.

### Usage

#### Import the package
```dart
import 'package:connectivity_plus/connectivity_plus.dart';
```

#### Example: Listening to Connectivity Changes

The following example demonstrates how to use a `StreamBuilder` to listen to changes in network connectivity and update the UI accordingly.

```dart
import 'package:flutter/material.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Connectivity Plus Example'),
        ),
        body: ConnectivityStatus(),
      ),
    );
  }
}

class ConnectivityStatus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<ConnectivityResult>(
      stream: Connectivity().onConnectivityChanged,
      builder: (context, snapshot) {
        if (snapshot.hasData && (snapshot.data == ConnectivityResult.mobile || snapshot.data == ConnectivityResult.wifi)) {
          // Return the widget when the device is connected to mobile data or WiFi
          return OnlineContent();
        } else {
          // Return the widget when the device is not connected to mobile data or WiFi
          return OfflineContent();
        }
      },
    );
  }
}

class OnlineContent extends StatelessWidget {
  const OnlineContent();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('You are online!'),
    );
  }
}

class OfflineContent extends StatelessWidget {
  const OfflineContent();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('You are offline.'),
    );
  }
}
```

### Explanation
- **Import the package**: First, import the `connectivity_plus` package.
- **StreamBuilder**: Use a `StreamBuilder` to listen for changes in the connectivity status provided by `Connectivity().onConnectivityChanged`.
- **Builder Function**: The `builder` function checks the connectivity status:
  - If `snapshot.data` contains `ConnectivityResult.mobile` or `ConnectivityResult.wifi`, it means the device is connected to the internet, and the `OnlineContent` widget is returned.
  - If the device is not connected, the `OfflineContent` widget is returned.
- **OnlineContent and OfflineContent Widgets**: These are simple widgets that display a message based on the connectivity status.

This setup ensures that the UI updates dynamically based on the network connectivity status of the device.

### Screenshots 📷

<div align="left">
<img src= "https://github.com/Zimil-Patel/adv_flutter_ch3/blob/master/snaps/3.1/img1.png" height = 510 width = 240> &nbsp;&nbsp;&nbsp;&nbsp; <img src= "https://github.com/Zimil-Patel/adv_flutter_ch3/blob/master/snaps/3.1/img2.png" height = 510 width = 240> &nbsp;&nbsp;&nbsp;&nbsp;
</div>

### Video Preview 🎥

https://github.com/Zimil-Patel/adv_flutter_ch3/assets/112332000/f012e855-9b91-454e-a1bc-2b9e9b44f27e


## ✔️ 3.2 Chrome : flutter_inappwebview Package [📂 (source)](https://github.com/Zimil-Patel/adv_flutter_ch3/tree/master/lib/3.2_flutter_inappwebview)



### Screenshots 📷

<div align="left">
<img src= "https://github.com/Zimil-Patel/adv_flutter_ch3/blob/master/snaps/3.2/img1.png" height = 510 width = 240> &nbsp;&nbsp;&nbsp;&nbsp; <img src= "https://github.com/Zimil-Patel/adv_flutter_ch3/blob/master/snaps/3.2/img2.png" height = 510 width = 240> &nbsp;&nbsp;&nbsp;&nbsp; <img src= "https://github.com/Zimil-Patel/adv_flutter_ch3/blob/master/snaps/3.2/img3.png" height = 510 width = 240> 
</div>

### Video Preview 🎥





import 'package:super_hit/design/custom_icons.dart';
import 'package:super_hit/design/dimensions.dart';
import 'package:flutter/material.dart';

class MainBtn extends StatefulWidget {
  const MainBtn({super.key});

  @override
  State<MainBtn> createState() => MainBtnState();
}

class MainBtnState extends State<MainBtn> {
  bool buttonStatus = false;
  String connectionStatus = connectionStatusDisconnected;
  double blueCircleSize = 0.0;
  bool isConnecting = false;
  bool shouldAnimate = false;

  void buttonHandler() async {
    if (isConnecting == false) {
      setState(() {
        if (buttonStatus == false) {
          connectionStatus = connectionStatusConnecting;
          shouldAnimate = false;
          blueCircleSize =
              MediaQuery.of(context).size.width <
                      MediaQuery.of(context).size.height
                  ? MediaQuery.of(context).size.width / 4.6
                  : MediaQuery.of(context).size.height / 8;
        } else {
          connectionStatus = connectionStatusDisconnecting;
          shouldAnimate = true;
          blueCircleSize =
              MediaQuery.of(context).size.width <
                      MediaQuery.of(context).size.height
                  ? MediaQuery.of(context).size.width / 4.6
                  : MediaQuery.of(context).size.height / 8;
        }
        isConnecting = true;
      });

      await Future.delayed(Duration(milliseconds: 5));

      setState(() {
        if (buttonStatus == false) {
          shouldAnimate = true;
          blueCircleSize =
              MediaQuery.of(context).size.width <
                      MediaQuery.of(context).size.height
                  ? MediaQuery.of(context).size.width / 2.3
                  : MediaQuery.of(context).size.height / 4;
        } else {
          shouldAnimate = false;
          blueCircleSize =
              MediaQuery.of(context).size.width <
                      MediaQuery.of(context).size.height
                  ? MediaQuery.of(context).size.width / 4.6
                  : MediaQuery.of(context).size.height / 8;
        }
      });

      await Future.delayed(Duration(seconds: 3));

      setState(() {
        if (buttonStatus == false) {
          buttonStatus = true;
          connectionStatus = connectionStatusConnected;
        } else {
          buttonStatus = false;
          connectionStatus = connectionStatusDisconnected;
          blueCircleSize = 0.0;
        }
        isConnecting = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: buttonHandler,
          style: ElevatedButton.styleFrom(
            shape: CircleBorder(),
            elevation: elevation2,
            backgroundColor: Theme.of(context).colorScheme.onPrimary,
          ),
          child: SizedBox(
            width:
                MediaQuery.of(context).size.width <
                        MediaQuery.of(context).size.height
                    ? MediaQuery.of(context).size.width / 2.3
                    : MediaQuery.of(context).size.height / 4,
            height:
                MediaQuery.of(context).size.width <
                        MediaQuery.of(context).size.height
                    ? MediaQuery.of(context).size.width / 2.3
                    : MediaQuery.of(context).size.height / 4,
            child: Stack(
              alignment: Alignment.center,
              children: [
                AnimatedContainer(
                  duration: Duration(seconds: shouldAnimate ? 3 : 0),
                  width: blueCircleSize,
                  height: blueCircleSize,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                Icon(
                  CustomIcons.mainBtn,
                  size:
                      MediaQuery.of(context).size.width <
                              MediaQuery.of(context).size.height
                          ? MediaQuery.of(context).size.width / 6.9
                          : MediaQuery.of(context).size.height / 12,
                  color:
                      isConnecting | buttonStatus
                          ? Theme.of(context).colorScheme.onPrimary
                          : Colors.grey,
                ),
              ],
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 12),
          child: Text(
            connectionStatus,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: Colors.grey,
              fontSize: fontSize17,
              fontFamily: fontFamilySFPro,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}

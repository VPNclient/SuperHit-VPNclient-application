import 'package:super_hit/design/custom_icons.dart';
import 'package:super_hit/design/dimensions.dart';
import 'package:flutter/material.dart';

class AppsBtn extends StatefulWidget {
  const AppsBtn({super.key});

  @override
  State<AppsBtn> createState() => AppsBtnState();
}

class AppsBtnState extends State<AppsBtn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 64,
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.only(left: 30, right: 30),
      child: FloatingActionButton(
        elevation: elevation2,
        onPressed: () {},
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(14)),
        ),
        backgroundColor: Theme.of(context).colorScheme.onPrimary,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 44,
              height: 44,
              margin: const EdgeInsets.only(left: 20),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Theme.of(context).colorScheme.surface,
              ),
              child: Icon(CustomIcons.apps, size: 21, color: Colors.grey),
            ),
            Container(
              width: MediaQuery.of(context).size.width - 200,
              margin: const EdgeInsets.only(left: 12, right: 12),
              child: Text(
                'Все приложения',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Theme.of(context).colorScheme.onSecondary,
                  fontSize: fontSize17,
                  fontFamily: fontFamilySFPro,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 20),
              child: Icon(Icons.navigate_next, size: 28, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}

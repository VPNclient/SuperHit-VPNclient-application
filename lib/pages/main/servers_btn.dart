import 'package:super_hit/design/dimensions.dart';
import 'package:flutter/material.dart';

class ServersBtn extends StatefulWidget {
  const ServersBtn({super.key});

  @override
  State<ServersBtn> createState() => ServersBtnState();
}

class ServersBtnState extends State<ServersBtn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 64,
      margin: const EdgeInsets.only(left: 30, top: 12, right: 30),
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
              alignment: Alignment.center,
              width: 44,
              height: 44,
              margin: const EdgeInsets.only(left: 20),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Theme.of(context).colorScheme.surface,
              ),
              child: Text(
                '🇷🇺',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Theme.of(context).colorScheme.onSecondary,
                  fontSize: fontSize24,
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width - 200,
              margin: const EdgeInsets.only(left: 12, right: 12),
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Россия',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Theme.of(context).colorScheme.onSecondary,
                      fontSize: fontSize17,
                      fontFamily: fontFamilySFPro,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    'Super HIT - Russia',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Colors.grey,
                      fontSize: fontSize13,
                      fontFamily: fontFamilySFPro,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
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

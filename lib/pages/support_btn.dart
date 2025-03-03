import 'package:flutter/material.dart';
import 'package:super_hit/design/dimensions.dart';

class SupportBtn extends StatefulWidget {
  const SupportBtn({super.key});

  @override
  State<SupportBtn> createState() => SupportBtnState();
}

class SupportBtnState extends State<SupportBtn> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 48,
          padding: const EdgeInsets.only(left: 30, right: 30),
          margin: const EdgeInsets.only(bottom: 40),
          child: FloatingActionButton(
            elevation: elevation2,
            onPressed: () {},
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(40)),
            ),
            backgroundColor: Theme.of(context).colorScheme.onPrimary,
            child: Text(
              'Служба поддержки',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Theme.of(context).colorScheme.onSecondary,
                fontSize: fontSize17,
                fontFamily: fontFamilySFPro,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

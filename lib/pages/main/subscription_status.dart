import 'package:super_hit/design/dimensions.dart';
import 'package:flutter/material.dart';

class SubscriptionStatus extends StatefulWidget {
  const SubscriptionStatus({super.key});

  @override
  State<SubscriptionStatus> createState() => SubscriptionStatusState();
}

class SubscriptionStatusState extends State<SubscriptionStatus> {
  @override
  Widget build(BuildContext context) {
    return Text(
      subscriptionsStatus,
      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
        color: Colors.grey,
        fontSize: fontSize17,
        fontFamily: fontFamilySFPro,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}

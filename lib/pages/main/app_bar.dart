import 'package:super_hit/design/custom_icons.dart';
import 'package:super_hit/design/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:super_hit/theme_provider.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({super.key});

  @override
  State<CustomAppBar> createState() => CustomAppBarState();
}

class CustomAppBarState extends State<CustomAppBar> {
  void _themeButtonHandler() {
    final themeProvider = Provider.of<ThemeProvider>(context, listen: false);
    themeProvider.toggleTheme(themeProvider.themeMode == ThemeMode.light);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 48,
      margin: const EdgeInsets.only(top: 10),
      padding: const EdgeInsets.only(left: 30, right: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FloatingActionButton(
            elevation: elevation2,
            onPressed: _themeButtonHandler,
            shape: CircleBorder(),
            backgroundColor: Theme.of(context).colorScheme.onPrimary,
            child: Consumer<ThemeProvider>(
              builder: (context, themeProvider, child) {
                return Icon(
                  themeProvider.themeMode == ThemeMode.dark
                      ? CustomIcons.themeDark
                      : CustomIcons.themeLight,
                  color: Theme.of(context).colorScheme.primary,
                );
              },
            ),
          ),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'Super ',
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: Theme.of(context).colorScheme.onSecondary,
                    fontFamily: fontFamilySFPro,
                    fontWeight: FontWeight.w700,
                    fontSize: fontSize17,
                  ),
                ),
                TextSpan(
                  text: 'HIT',
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                    fontFamily: fontFamilySFPro,
                    fontWeight: FontWeight.w700,
                    fontSize: fontSize17,
                  ),
                ),
              ],
            ),
          ),
          FloatingActionButton(
            elevation: 2,
            onPressed: () {},
            shape: CircleBorder(),
            backgroundColor: Theme.of(context).colorScheme.onPrimary,
            child: Icon(
              Icons.tune_rounded,
              color: Theme.of(context).colorScheme.onSecondary,
            ),
          ),
        ],
      ),
    );
  }
}

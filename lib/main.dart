import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'share.dart';

void main() => runApp(const TabScaffoldApp());
void share() => runApp(const ShareApp());

class TabScaffoldApp extends StatelessWidget {
  const TabScaffoldApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        extensions: <ThemeExtension<dynamic>>[lightColors]
      ),
      darkTheme: ThemeData(
        extensions: <ThemeExtension<dynamic>>[darkColors]
      ),
      home: const TabScaffoldExample(),
    );
  }
}

class TabScaffoldExample extends StatefulWidget {
  const TabScaffoldExample({super.key});

  @override
  State<TabScaffoldExample> createState() => _TabScaffoldExampleState();
}

class _TabScaffoldExampleState extends State<TabScaffoldExample> {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.search_circle_fill),
            label: 'Explore',
          ),
        ],
      ),
      tabBuilder: (BuildContext context, int index) {
        return CupertinoTabView(
          builder: (BuildContext context) {
            final appColors = Theme.of(context).extension<AppColors>()!;

            return CupertinoPageScaffold(
              backgroundColor: appColors.backgroundWhite,
              navigationBar: CupertinoNavigationBar(
                middle: Text('Page 1 of tab $index'),
              ),
              child: Center(
                child: CupertinoButton(
                  child: Text(
                    'Next page',
                    style: TextStyle(color: appColors.textBlackOnWhite)
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      CupertinoPageRoute<void>(
                        builder: (BuildContext context) {
                          return CupertinoPageScaffold(
                            navigationBar: CupertinoNavigationBar(
                              middle: Text('Page 2 of tab $index'),
                            ),
                            child: Center(
                              child: CupertinoButton(
                                child: const Text('Back'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ),
                          );
                        },
                      ),
                    );
                  },
                ),
              ),
            );
          },
        );
      },
    );
  }
}

class TestScreen extends StatelessWidget {
  final String screenName;

  const TestScreen({
    super.key,
    required this.screenName
  });


  @override
  Widget build(BuildContext context) {
    final appColors = Theme.of(context).extension<AppColors>()!;

    return Container(
      color: appColors.backgroundWhite,
      child: Center(
        child: Text(
          screenName,
          style: TextStyle(color: appColors.textBlackOnWhite)
        ),
      ),
    );
  }
}


var aaa = {
  'asdf': () => const TestScreen(screenName: 'asdf')
};

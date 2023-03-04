import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'screen.dart';
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
  final _tabNavKeys = <GlobalKey<NavigatorState>>[
    GlobalKey(),
    GlobalKey(),
  ];
  final _tabController = CupertinoTabController(initialIndex: 0);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => !(await _tabNavKeys[_tabController.index].currentState?.maybePop() ?? false),
      child: CupertinoTabScaffold(
        controller: _tabController,
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
            navigatorKey: _tabNavKeys[index],
            builder: (BuildContext context) {
              return CupertinoPageScaffold(
                child: buildStartScreen(context, index),
              );
            },
          );
        },
      ),
    );
  }
}

void navigate(BuildContext context, String path) {
  final screen = Screen.fromPath(path);
  var arguments = screen.parsePath(path);

  Navigator.of(context).push(
    CupertinoPageRoute<void>(
      builder: (BuildContext context) {
        return CupertinoPageScaffold(
          child: buildScreen(context, screen, arguments),
        );
      }
    )
  );
}

Widget buildStartScreen(BuildContext context, int index) =>
  index == 0 ? TestScreen(
    screenName: 'Home',
    child: TextButton(
      child: const Text('Press me'),
      onPressed: () => navigate(context, 'users/2'),
    )
  ) : TestScreen(
    screenName: 'Explore root',
    child: TextButton(
      child: const Text('Press me'),
      onPressed: () => navigate(context, 'explore?asdf'),
    )
  );

Widget buildScreen(BuildContext context, Screen screen, Map<String, dynamic> arguments) => screen.when(
  explore: () => TestScreen(
    screenName: screen.getName(arguments),
    child: TextButton(
      child: const Text('Press me'),
      onPressed: () => navigate(context, 'users/1'),
    )
  ),
  user: () => TestScreen(
    screenName: screen.getName(arguments),
    child: TextButton(
      child: const Text('Press me'),
      onPressed: () => navigate(context, 'explore'),
    )
  ),
  unknown: () => TestScreen(
    screenName: 'Unknown Screen',
    child: Container()
  )
);

class TestScreen extends StatelessWidget {
  final String screenName;
  final Widget child;

  const TestScreen({
    super.key,
    required this.screenName,
    required this.child
  });

  @override
  Widget build(BuildContext context) {
    final appColors = Theme.of(context).extension<AppColors>()!;

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            screenName,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              color: appColors.textBlackOnWhite
            )
          ),
          child
        ]
      ),
    );
  }
}

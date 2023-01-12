import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:spotify_clone_flutter/core/components/icon_button_widget.dart';
import 'package:spotify_clone_flutter/core/theme/app_theme.dart';
import 'package:spotify_clone_flutter/screens/home/home_screen.dart';
import 'package:spotify_clone_flutter/screens/player/player_screen.dart';

import '../../core/fixtures/app_fixtures.dart';
import '../profile/profile_screen.dart';
import '../search/search_screen.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

int _selectedIndex = 0;

class _LandingScreenState extends State<LandingScreen> {
  @override
  void initState() {
    super.initState();
    log("Carregando recursos...");
    Future.delayed(const Duration(seconds: 3));
    FlutterNativeSplash.remove();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff121212),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            // Positioned(
            //     top: -509,
            //     left: -500,
            //     child: Container(
            //       height: 1000,
            //       width: 1000,
            //       decoration: const BoxDecoration(
            //         gradient: RadialGradient(
            //             colors: [Color(0xff859AC0), Colors.transparent]),
            //       ),
            //     )),
            _screens.elementAt(_selectedIndex),
            Positioned(
              bottom: 0,
              child: Column(
                children: [
                  // music-player-slab
                  Stack(
                    children: [
                      InkWell(
                        enableFeedback: false,
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) =>
                                      const PlayerScreen())));
                        },
                        child: Container(
                          height: 56,
                          width: MediaQuery.of(context).size.width - 16,
                          decoration: const BoxDecoration(
                            color: Color(0xff483285),
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                          ),
                          padding: const EdgeInsets.all(9),
                          child: Row(
                            children: [
                              // img
                              Container(
                                width: 38,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'https://i.scdn.co/image/ab67616d0000b2731f164f15e99430f265af764d'),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(4),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              // title and creator
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  // title
                                  AppTheme.bodyTextStyle(
                                      text: "O Poder Dessa Garota",
                                      color: AppTheme.colorWhite,
                                      fontWeight: FontWeight.w500),
                                  // creator
                                  AppTheme.bodyTextStyle(
                                      text: "Mc Gabzin, DJ TAK VADIÃO, dj sv",
                                      color: AppTheme.colorGrey,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12),
                                ],
                              ),
                              const Expanded(child: SizedBox()),
                              // connect devise
                              const IconButtonWidget(
                                  icon: 'connect-device.png'),
                              // like
                              const IconButtonWidget(icon: 'heart.png'),
                              // pause
                              const IconButtonWidget(icon: 'puse.png'),
                            ],
                          ),
                        ),
                      ),
                      // seekbar
                      Positioned(
                        bottom: 0,
                        left: 8,
                        child: Container(
                          height: 2,
                          width: MediaQuery.of(context).size.width - 32,
                          decoration: const BoxDecoration(
                            color: Colors.white38,
                            borderRadius: BorderRadius.all(
                              Radius.circular(7),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 8,
                        child: Container(
                          height: 2,
                          width: (MediaQuery.of(context).size.width - 32) * 0.2,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(7),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  // bottem-nav-bar
                  Container(
                    height: 65,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(255, 0, 0, 0),
                          Color.fromARGB(200, 0, 0, 0),
                          Color.fromARGB(135, 0, 0, 0),
                          Color.fromARGB(80, 0, 0, 0),
                          Colors.transparent,
                        ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        stops: [0.0, 0.3, 0.6, 0.75, 1.0],
                      ),
                    ),
                    padding:
                        const EdgeInsets.only(left: 15, right: 15, top: 15),
                    child: Row(
                      children: [
                        BottomNavBarItem(
                          title: 'Home',
                          icon: 'home.png',
                          onTap: () {
                            _onItemTapped(0);
                          },
                          index: 0,
                        ),
                        BottomNavBarItem(
                          title: 'Searh',
                          icon: 'search.png',
                          onTap: () {
                            _onItemTapped(1);
                          },
                          index: 1,
                        ),
                        BottomNavBarItem(
                          title: 'Your Library',
                          icon: 'library.png',
                          onTap: () {
                            _onItemTapped(2);
                          },
                          index: 2,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BottomNavBarItem extends StatelessWidget {
  const BottomNavBarItem({
    Key? key,
    this.onTap,
    required this.icon,
    required this.title,
    required this.index,
  }) : super(key: key);
  final Function()? onTap;
  final String icon;
  final String title;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        enableFeedback: false,
        highlightColor: Colors.transparent,
        focusColor: Colors.transparent,
        splashColor: Colors.transparent,
        onTap: onTap,
        child: Column(
          children: [
            Image.asset(
              '$kAssetIconsWay/$icon',
              color: _selectedIndex != index
                  ? const Color(0xffababab)
                  : Colors.white,
            ),
            const SizedBox(
              height: 8,
            ),
            // title
            AppTheme.bodyTextStyle(
                text: title,
                color: _selectedIndex != index
                    ? AppTheme.colorGrey
                    : AppTheme.colorWhite,
                fontWeight: FontWeight.w500,
                fontSize: 11.0)
          ],
        ),
      ),
    );
  }
}

List<Widget> _screens = <Widget>[
  const HomeScreen(),
  const SearchScreen(),
  const ProfleScreen(),
];

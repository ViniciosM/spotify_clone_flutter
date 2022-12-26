import 'package:flutter/material.dart';
import 'package:spotify_clone_flutter/core/theme/app_theme.dart';
import 'package:spotify_clone_flutter/screens/home/components/header.dart';
import 'package:spotify_clone_flutter/screens/home/components/home_section_items_builder.dart';
import 'package:spotify_clone_flutter/screens/home/components/playlist_grid_section.dart';

import '../../core/components/icon_button_widget.dart';
import '../../core/components/section_builder.dart';
import '../../core/fixtures/app_fixtures.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color.fromARGB(255, 68, 126, 212), Colors.transparent],
              stops: [0.0, 0.30]),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 36, bottom: 80),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // title-and-toolbar-buttons
              const Header(),
              // playlist-grid-section
              const PlayListGridSection(),
              // top mixes
              SectionBuilder(
                  sectionTitle: "Your Top Mixes",
                  padding: const EdgeInsets.only(bottom: 0),
                  sectionBodyBuilder: (context) {
                    return HomeSectionItemsBuilder(
                      list: kTopMixedList,
                      showTitle: false,
                      showSubtitle: false,
                    );
                  }),
              //recent lintening
              SectionBuilder(
                  sectionTitle: "Based on your recent listening",
                  sectionBodyBuilder: (context) {
                    return HomeSectionItemsBuilder(
                      list: kRecentListeningList,
                      showTitle: false,
                    );
                  }),
              // New songs added section
              SectionBuilder(
                  sectionTitle: 'New songs added',
                  sectionBodyBuilder: (context) {
                    return Container(
                      height: 145,
                      decoration: const BoxDecoration(
                        color: Color(0xff2E2F33),
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                      ),
                      margin: const EdgeInsets.only(right: 16, left: 16),
                      child: Row(
                        children: [
                          // img
                          Container(
                            width: 142,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://pbs.twimg.com/media/Dd67LcWVMAAjFrC.jpg'),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(4),
                                  bottomLeft: Radius.circular(4)),
                            ),
                          ),
                          // text
                          Padding(
                            padding: const EdgeInsets.only(top: 16, right: 16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // title
                                Padding(
                                  padding: const EdgeInsets.only(left: 16),
                                  child: AppTheme.bodyTextStyle(
                                      text: "Viral Hits"),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                // description
                                Padding(
                                  padding: const EdgeInsets.only(left: 16),
                                  child: SizedBox(
                                    width: 150,
                                    child: AppTheme.bodyTextStyle(
                                        text:
                                            "Playlist • The Kid LAROI, Olivia Rodrigo, Ariana Gra...",
                                        color: const Color(0xffa7a7a7),
                                        fontWeight: FontWeight.w600,
                                        maxLines: 2),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 6),
                                  child: SizedBox(
                                    width: 150,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: const [
                                        IconButtonWidget(icon: 'heart.png'),
                                        Expanded(child: SizedBox()),
                                        IconButtonWidget(
                                            icon: 'play-button.png'),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
              // podcast fir you section
              SectionBuilder(
                sectionTitle: 'Podcasts for you',
                sectionBodyBuilder: (context) {
                  return HomeSectionItemsBuilder(
                    list: kPlaylistPodcast,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

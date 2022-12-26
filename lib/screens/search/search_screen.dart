import 'package:flutter/material.dart';
import 'package:spotify_clone_flutter/core/theme/app_theme.dart';
import 'package:spotify_clone_flutter/screens/search/components/search_section_item_builder.dart';
import 'package:spotify_clone_flutter/screens/search/components/search_text_field.dart';

import '../../core/components/section_builder.dart';
import '../../core/fixtures/app_fixtures.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          // Search text
          SliverToBoxAdapter(
            child: Padding(
                padding: const EdgeInsets.only(left: 16, top: 16, bottom: 20),
                child:
                    AppTheme.headingTextStyle(text: "Search", fontSize: 32.0)),
          ),
          // search-text-field
          const SearchTextField(),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 18, left: 16, right: 16, bottom: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SectionBuilder(
                      sectionTitle: 'Your Top Genres',
                      titlePadding: const EdgeInsets.only(bottom: 10),
                      padding: const EdgeInsets.only(bottom: 16),
                      sectionBodyBuilder: (context) {
                        return SearchSectionItemBuilder(
                          list: kPlaylistSdded,
                        );
                      }),
                  SectionBuilder(
                      sectionTitle: 'Browse All',
                      padding: EdgeInsets.zero,
                      titlePadding: const EdgeInsets.only(bottom: 10),
                      sectionBodyBuilder: (context) {
                        return SearchSectionItemBuilder(
                          list: kAllSearh,
                        );
                      }),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

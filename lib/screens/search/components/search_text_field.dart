import 'package:flutter/material.dart';
import '../../../core/fixtures/app_fixtures.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: const Color(0xff121212),
      expandedHeight: 56,
      floating: true,
      pinned: true,
      elevation: 0,
      flexibleSpace: FlexibleSpaceBar(
        expandedTitleScale: 1,
        centerTitle: true,
        titlePadding: const EdgeInsets.symmetric(vertical: 5),
        title: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(4)),
          ),
          margin: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: const TextField(
            style: TextStyle(
                color: Color(0xff747474),
                fontWeight: FontWeight.w700,
                fontFamily: "Raleway",
                fontStyle: FontStyle.normal,
                fontSize: 13.0),
            decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: ImageIcon(
                  AssetImage('$kAssetIconsWay/search.png'),
                ),
                contentPadding: EdgeInsets.only(top: 15),
                hintText: 'Artist, Song, or podcast'),
          ),
        ),
      ),
    );
  }
}

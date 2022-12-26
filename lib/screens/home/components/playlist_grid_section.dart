import 'package:flutter/material.dart';
import 'package:spotify_clone_flutter/core/theme/app_theme.dart';
import '../../../core/fixtures/app_fixtures.dart';

class PlayListGridSection extends StatelessWidget {
  const PlayListGridSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 36),
      child: SizedBox(
        height: 240,
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 3,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8),
            itemCount: kPlaylistGrid.length,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (BuildContext ctx, index) {
              return Container(
                decoration: const BoxDecoration(
                  color: Color(0xff2E2F33),
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                ),
                padding: const EdgeInsets.only(right: 20),
                child: Row(
                  children: [
                    // img
                    Container(
                      width: 56,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(kPlaylistGrid[index].img),
                            fit: BoxFit.cover),
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(4),
                            bottomLeft: Radius.circular(4)),
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    // text
                    Flexible(
                        child: AppTheme.bodyTextStyle(
                            text: kPlaylistGrid[index].title)),
                  ],
                ),
              );
            }),
      ),
    );
  }
}

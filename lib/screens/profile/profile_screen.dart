import 'package:flutter/material.dart';
import 'package:spotify_clone_flutter/core/theme/app_theme.dart';
import 'package:spotify_clone_flutter/screens/profile/components/artist_container.dart';
import 'package:spotify_clone_flutter/screens/profile/components/player_list_container.dart';
import '../../core/components/icon_button_widget.dart';
import '../../core/fixtures/app_fixtures.dart';

class ProfleScreen extends StatelessWidget {
  const ProfleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(slivers: [
        SliverAppBar(
          backgroundColor: const Color(0xff121212),
          expandedHeight: 100,
          pinned: true,
          floating: true,
          title: Row(
            children: [
              CircleAvatar(
                backgroundColor: const Color(0xff84b963),
                child: AppTheme.bodyTextStyle(
                    text: "N", fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                width: 10,
              ),
              AppTheme.bodyTextStyle(text: "Your Library", fontSize: 22.0),
              const Expanded(child: SizedBox()),
              const IconButtonWidget(
                icon: 'search.png',
              ),
              const IconButtonWidget(
                icon: 'plus.png',
              ),
            ],
          ),
          shape: const Border(
            bottom: BorderSide(width: 2, color: Colors.black),
          ),
          flexibleSpace: FlexibleSpaceBar(
              expandedTitleScale: 1,
              titlePadding: const EdgeInsets.symmetric(horizontal: 16),
              centerTitle: true,
              background: Padding(
                padding: const EdgeInsets.only(top: 45, left: 16, bottom: 10),
                child: FiltersBuilder(list: kFilters),
              )),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 10,
              left: 16,
              right: 16,
              bottom: 130,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // recent filter
                Row(
                  children: [
                    // icon
                    const IconButtonWidget(icon: 'recent.png'),
                    // title
                    AppTheme.bodyTextStyle(
                        text: "Recent Player", fontWeight: FontWeight.w500),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                // playlist
                const PlayListContainer(
                  title: 'Eminem',
                  description: 'Playlist 1',
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://yt3.ggpht.com/ytc/AKedOLSrzEtaB6cNd0sxMDapTZ0ZIIKcGQMtGNaZ6py00Q=s900-c-k-c0x00ffffff-no-rj'),
                      fit: BoxFit.cover),
                ),
                // artist
                const ArtistContainer(
                  backgroundImage: NetworkImage(
                      'https://lite-images-i.scdn.co/image/ab6761610000e5eb9d1710bb76a4331e62ec1259'),
                  title: 'The Rare Occasions',
                  description: 'Artist',
                ),
                // playlist
                const PlayListContainer(
                  title: 'Eminem',
                  description: 'Playlist 1',
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://yt3.ggpht.com/ytc/AKedOLSrzEtaB6cNd0sxMDapTZ0ZIIKcGQMtGNaZ6py00Q=s900-c-k-c0x00ffffff-no-rj'),
                      fit: BoxFit.cover),
                ),
                // artist
                const ArtistContainer(
                  backgroundImage: NetworkImage(
                      'https://lite-images-i.scdn.co/image/ab6761610000e5eb9d1710bb76a4331e62ec1259'),
                  title: 'The Rare Occasions',
                  description: 'Artist',
                ),
                // playlist
                const PlayListContainer(
                  title: 'Eminem',
                  description: 'Playlist 1',
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://yt3.ggpht.com/ytc/AKedOLSrzEtaB6cNd0sxMDapTZ0ZIIKcGQMtGNaZ6py00Q=s900-c-k-c0x00ffffff-no-rj'),
                      fit: BoxFit.cover),
                ),
                // artist
                const ArtistContainer(
                  backgroundImage: NetworkImage(
                      'https://lite-images-i.scdn.co/image/ab6761610000e5eb9d1710bb76a4331e62ec1259'),
                  title: 'The Rare Occasions',
                  description: 'Artist',
                ),
                // playlist
                const PlayListContainer(
                  title: 'Eminem',
                  description: 'Playlist 1',
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://yt3.ggpht.com/ytc/AKedOLSrzEtaB6cNd0sxMDapTZ0ZIIKcGQMtGNaZ6py00Q=s900-c-k-c0x00ffffff-no-rj'),
                      fit: BoxFit.cover),
                ),
                // artist
                const ArtistContainer(
                  backgroundImage: NetworkImage(
                      'https://lite-images-i.scdn.co/image/ab6761610000e5eb9d1710bb76a4331e62ec1259'),
                  title: 'The Rare Occasions',
                  description: 'Artist',
                ),
                // playlist
                const PlayListContainer(
                  title: 'Eminem',
                  description: 'Playlist 1',
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://yt3.ggpht.com/ytc/AKedOLSrzEtaB6cNd0sxMDapTZ0ZIIKcGQMtGNaZ6py00Q=s900-c-k-c0x00ffffff-no-rj'),
                      fit: BoxFit.cover),
                ),
                // artist
                const ArtistContainer(
                  backgroundImage: NetworkImage(
                      'https://lite-images-i.scdn.co/image/ab6761610000e5eb9d1710bb76a4331e62ec1259'),
                  title: 'The Rare Occasions',
                  description: 'Artist',
                ),
                // playlist
                const PlayListContainer(
                  title: 'Eminem',
                  description: 'Playlist 1',
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://yt3.ggpht.com/ytc/AKedOLSrzEtaB6cNd0sxMDapTZ0ZIIKcGQMtGNaZ6py00Q=s900-c-k-c0x00ffffff-no-rj'),
                      fit: BoxFit.cover),
                ),
                // artist
                const ArtistContainer(
                  backgroundImage: NetworkImage(
                      'https://lite-images-i.scdn.co/image/ab6761610000e5eb9d1710bb76a4331e62ec1259'),
                  title: 'The Rare Occasions',
                  description: 'Artist',
                ),

                //add artist
                ArtistContainer(
                  child: Image.asset(
                    '$kAssetIconsWay/plus.png',
                  ),
                  title: 'Add artist',
                  backgroundColor: const Color(0xff2E2F33),
                ),
                // Add podcast & event
                const PlayListContainer(
                  title: 'Add podcast & event',
                  image: DecorationImage(
                    image: AssetImage('$kAssetIconsWay/plus.png'),
                  ),
                  color: Color(0xff2E2F33),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}

class FiltersBuilder extends StatelessWidget {
  const FiltersBuilder({
    Key? key,
    required this.list,
  }) : super(key: key);

  final List list;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: list.length,
        itemBuilder: ((context, index) {
          return InkWell(
            onTap: list[index].onTap,
            child: Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    border: Border.all(
                      width: 1,
                      color: Colors.white,
                    )),
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                margin: const EdgeInsets.only(top: 20),
                child: AppTheme.bodyTextStyle(
                    text: list[index].title, fontWeight: FontWeight.w500),
              ),
            ),
          );
        }),
      ),
    );
  }
}

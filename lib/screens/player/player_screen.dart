import 'package:flutter/material.dart';
import 'package:spotify_clone_flutter/core/components/icon_button_widget.dart';
import 'package:spotify_clone_flutter/core/theme/app_theme.dart';

class PlayerScreen extends StatelessWidget {
  const PlayerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xff483285), Color(0xff121212)]),
      ),
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          titleSpacing: 0,
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Transform.translate(
            offset: const Offset(-15, 0),
            child: const IconButtonWidget(icon: 'pull-down-arrow.png'),
          ),
          title: AppTheme.bodyTextStyle(text: "Playlist Name"),
          centerTitle: true,
          actions: [
            Transform.translate(
              offset: const Offset(15, 0),
              child: const IconButtonWidget(icon: 'more.png'),
            ),
          ],
        ),
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            Expanded(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://i.scdn.co/image/ab67616d0000b2731f164f15e99430f265af764d'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Column(
                children: [
                  // title and like button
                  Row(
                    children: [
                      // title and creator
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // title
                          AppTheme.headingTextStyle(
                              text: "O Poder Dessa Garota"),
                          // Creator
                          AppTheme.bodyTextStyle(
                              text: "Mc Gabzin DJ TAK VADIÃO, dj sv",
                              color: AppTheme.colorGrey,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w600),
                        ],
                      ),
                      const Expanded(child: SizedBox()),
                      // like button
                      const IconButtonWidget(icon: 'heart.png'),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  // seek bar
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: Colors.white.withAlpha(30),
                        thumbColor: Colors.white,
                        trackHeight: 4,
                        trackShape: CustomTrackShape(),
                        overlayShape: SliderComponentShape.noOverlay),
                    child: Slider(
                      value: 20,
                      min: 1,
                      max: 100,
                      onChanged: (value) {},
                    ),
                  ),
                  // current and left time
                  Row(
                    children: [
                      AppTheme.bodyTextStyle(
                          text: "0:56",
                          color: AppTheme.colorGrey2,
                          fontWeight: FontWeight.w300),
                      // 0:56

                      const Expanded(child: SizedBox()),
                      // -3:07

                      AppTheme.bodyTextStyle(
                          text: "-3:18",
                          color: AppTheme.colorGrey2,
                          fontWeight: FontWeight.w300),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  // control buttons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      IconButtonWidget(icon: 'shuffle.png'),
                      IconButtonWidget(icon: 'previus-song.png'),
                      IconButtonWidget(icon: 'play-pause-button.png'),
                      IconButtonWidget(icon: 'next-song.png'),
                      IconButtonWidget(icon: 'repeat.png'),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  //
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      IconButtonWidget(icon: 'connect-device.png'),
                      Expanded(child: SizedBox()),
                      IconButtonWidget(icon: 'playlist.png'),
                    ],
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

class CustomTrackShape extends RoundedRectSliderTrackShape {
  @override
  Rect getPreferredRect({
    required RenderBox parentBox,
    Offset offset = Offset.zero,
    required SliderThemeData sliderTheme,
    bool isEnabled = false,
    bool isDiscrete = false,
  }) {
    final double? trackHeight = sliderTheme.trackHeight;
    final double trackLeft = offset.dx;
    final double trackTop =
        offset.dy + (parentBox.size.height - trackHeight!) / 2;
    final double trackWidth = parentBox.size.width;
    return Rect.fromLTWH(trackLeft, trackTop, trackWidth, trackHeight);
  }
}

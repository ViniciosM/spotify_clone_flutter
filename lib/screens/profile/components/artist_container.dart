import 'package:flutter/material.dart';
import 'package:spotify_clone_flutter/core/theme/app_theme.dart';

class ArtistContainer extends StatelessWidget {
  const ArtistContainer({
    Key? key,
    required this.title,
    this.description,
    this.child,
    this.onTap,
    this.backgroundColor = const Color(0xff2E2F33),
    this.backgroundImage,
  }) : super(key: key);

  final String title;
  final String? description;
  final Widget? child;
  final ImageProvider<Object>? backgroundImage;
  final Function()? onTap;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 60,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(4)),
        ),
        margin: const EdgeInsets.only(bottom: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // img
            CircleAvatar(
              radius: 35,
              backgroundImage: backgroundImage,
              backgroundColor: backgroundColor,
              child: child,
            ),
            // text
            Padding(
              padding: const EdgeInsets.only(top: 16, right: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // title
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: AppTheme.bodyTextStyle(text: title),
                  ),
                  // description
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: SizedBox(
                      width: 200,
                      child: Text(
                        description ?? '',
                        style: const TextStyle(
                          color: Color(0xffa7a7a7),
                          fontWeight: FontWeight.w600,
                          fontFamily: "Raleway",
                          fontStyle: FontStyle.normal,
                          fontSize: 13.0,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
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

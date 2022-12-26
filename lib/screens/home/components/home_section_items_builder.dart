import 'package:flutter/material.dart';

import '../../../core/theme/app_theme.dart';

class HomeSectionItemsBuilder extends StatelessWidget {
  const HomeSectionItemsBuilder({
    Key? key,
    required this.list,
    this.showTitle = true,
    this.showSubtitle = true,
  }) : super(key: key);

  final List list;
  final bool showTitle;
  final bool showSubtitle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: list.length,
        itemBuilder: ((context, index) {
          bool last = list.length == (index + 1);
          return Padding(
            padding: EdgeInsets.only(
              left: 16,
              right: last ? 16 : 0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // img
                Container(
                  width: 138,
                  height: 138,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(list[index].img),
                        fit: BoxFit.cover),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                // title
                Visibility(
                  visible: showTitle,
                  child: SizedBox(
                    width: 135,
                    child: AppTheme.bodyTextStyle(
                        text: list[index].title, fontSize: 12, maxLines: 1),
                  ),
                ),
                // subtitle
                Visibility(
                  visible: showSubtitle,
                  child: SizedBox(
                    width: 135,
                    child: AppTheme.bodyTextStyle(
                        text: list[index].subtitle ?? "",
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: const Color(0xffb3b3b3),
                        maxLines: 3),
                  ),
                )
              ],
            ),
          );
        }),
      ),
    );
  }
}

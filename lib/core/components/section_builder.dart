import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

class SectionBuilder extends StatelessWidget {
  const SectionBuilder({
    Key? key,
    required this.sectionTitle,
    required this.sectionBodyBuilder,
    this.titlePadding = const EdgeInsets.only(left: 16, bottom: 18),
    this.padding = const EdgeInsets.only(bottom: 36),
  }) : super(key: key);

  final String sectionTitle;

  final Widget Function(BuildContext) sectionBodyBuilder;
  final EdgeInsetsGeometry titlePadding;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // title
          Padding(
            padding: titlePadding,
            child: AppTheme.headingTextStyle(
                text: sectionTitle,
                fontWeight: FontWeight.w700,
                textOverflow: TextOverflow.ellipsis,
                fontSize: 22.0),
          ),
          Builder(builder: sectionBodyBuilder),
        ],
      ),
    );
  }
}

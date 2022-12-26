import 'package:flutter/material.dart';

import '../../../core/components/icon_button_widget.dart';
import '../../../core/theme/app_theme.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: Row(
        children: [
          AppTheme.headingTextStyle(text: "Good afternoon"),
          const Expanded(child: SizedBox()),
          const IconButtonWidget(
            icon: 'bell.png',
          ),
          const IconButtonWidget(
            icon: 'history.png',
          ),
          const IconButtonWidget(
            icon: 'settings.png',
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:miaudote/core/utils/app_colors.dart';
import 'dart:io';

import 'package:miaudote/core/utils/app_strings.dart';

abstract class StyledAppBar {
  static PreferredSizeWidget appBar(
    BuildContext context,
    String? title, {
    List<Widget>? actions,
    bool transparentBackground = false,
    bool leading = false,
    bool isDark = false,
    bool showCupertinoShadow = true,
  }) {
    return _build(
      context,
      Text(
        title ?? '',
        style: TextStyle(
          color: isDark ? AppColors.lightest : AppColors.neutralDarkest,
          fontWeight: FontWeight.w600,
          fontSize: 17,
          fontFamily: 'Gluten',
        ),
      ),
      actions: actions,
      transparentBackground: transparentBackground,
      isDark: isDark,
      isLeading: leading,
      showCupertinoShadow: showCupertinoShadow,
    );
  }

  static PreferredSizeWidget _build(
    BuildContext context,
    Widget title, {
    List<Widget>? actions,
    bool automaticallyImplyLeading = true,
    bool transparentBackground = false,
    Color? customBackgroundColor,
    double? materialTitleSpacing,
    bool isDark = false,
    bool isLeading = false,
    bool showCupertinoShadow = true,
  }) {
    var useCloseButton = false;
    final ModalRoute<dynamic>? parentRoute = ModalRoute.of(context);
    useCloseButton = parentRoute is PageRoute<dynamic> && parentRoute.fullscreenDialog;

    final actionsColor =
        isDark ? AppColors.lightest : (Platform.isAndroid ? AppColors.neutralDarkest : AppColors.lightest);
    final primaryColor = isDark ? AppColors.neutralDarkest : AppColors.lightest;
    final brightness = isDark ? Brightness.dark : Brightness.light;
    final platformAppBar = PlatformAppBar(
      automaticallyImplyLeading: automaticallyImplyLeading,
      backgroundColor: customBackgroundColor ?? (transparentBackground ? Colors.transparent : primaryColor),
      trailingActions: actions,
      title: title,
      material: (context, target) {
        return MaterialAppBarData(
          elevation: 0,
          iconTheme: IconThemeData(color: actionsColor),
          titleSpacing: materialTitleSpacing,
          leading: Navigator.canPop(context)
              ? IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: Icon(
                    useCloseButton ? MdiIcons.close : MdiIcons.arrowLeft,
                    color: actionsColor,
                  ),
                )
              : null,
          brightness: brightness,
        );
      },
      cupertino: (context, target) {
        return CupertinoNavigationBarData(
          leading: automaticallyImplyLeading
              ? Material(
                  color: Colors.transparent,
                  child: IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: Icon(
                      CupertinoIcons.back,
                      color: actionsColor,
                    ),
                  ),
                )
              : null,
          brightness: brightness,
          padding: const EdgeInsetsDirectional.only(end: 6),
          previousPageTitle: isLeading ? AppStrings.appBarBack : null,
          border: showCupertinoShadow ? null : const Border(),
        );
      },
    );
    return platformAppBar.build(context) as PreferredSizeWidget;
  }
}

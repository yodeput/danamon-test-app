import 'dart:io';

import 'package:danamonTest/common/ui/widget/spacer.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class CustomBottomSheet {
  show(BuildContext context,
      {required Widget child,
      ScrollPhysics? physics,
      bool isDismissible = true,
      String? routeName,
      bool removePaddingBottom = false,
      bool removePaddingTop = false}) {
    if (!kIsWeb && Platform.isIOS) {
      showCupertinoModalBottomSheet(
        context: context,
        useRootNavigator: routeName != null,
        isDismissible: isDismissible,
        settings: routeName != null ? RouteSettings(name: routeName) : null,
        barrierColor: Colors.black54,
        builder: (context) => Material(
          child: SafeArea(
            child: SingleChildScrollView(
              physics: physics ?? const ClampingScrollPhysics(),
              controller: ModalScrollController.of(context),
              child: Padding(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (!removePaddingTop) const CustomSpacer(scale: 2),
                    child,
                    if (!removePaddingBottom) const CustomSpacer(scale: 2),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    } else {
      showMaterialModalBottomSheet(
        context: context,
        useRootNavigator: routeName != null,
        isDismissible: isDismissible,
        settings: routeName != null ? RouteSettings(name: routeName) : null,
        barrierColor: Colors.black54,
        builder: (context) => Material(
          child: SafeArea(
            child: SingleChildScrollView(
              physics: physics ?? const ClampingScrollPhysics(),
              controller: ModalScrollController.of(context),
              child: Padding(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (!removePaddingTop) const CustomSpacer(scale: 2),
                    child,
                    if (!removePaddingBottom) const CustomSpacer(scale: 2),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    }
  }
}

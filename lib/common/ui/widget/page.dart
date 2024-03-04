import 'package:flutter/material.dart';

class AppPadding {
  static const page = 8.0;
  static const page2 = 16.0;
  static const page3 = 24.0;
}

class PagePadding extends StatelessWidget {
  const PagePadding({
    required this.child,
    super.key,
    this.horizontal = true,
    this.vertical = false,
    this.scale = 1.0,
  });

  final Widget child;
  final bool horizontal;
  final bool vertical;

  final double scale;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MediaQuery.of(context).viewInsets,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: horizontal ? AppPadding.page2 * scale : 0,
          vertical: vertical ? AppPadding.page2 * scale : 0,
        ),
        child: child,
      ),
    );
  }
}

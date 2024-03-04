import 'package:danamonTest/common/extension/context.dart';
import 'package:danamonTest/common/ui/widget/page.dart';
import 'package:danamonTest/common/ui/widget/spacer.dart';
import 'package:danamonTest/common/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class LoadingOverlay extends StatefulWidget {
  const LoadingOverlay({
    required this.loading,
    required this.child,
    super.key,
  });

  final bool loading;
  final Widget child;

  @override
  State<LoadingOverlay> createState() => _LoadingOverlayState();
}

class _LoadingOverlayState extends State<LoadingOverlay>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat();
  }

  int getNumberOfDots(double value) {
    if (value < 0.33) {
      return 1;
    } else if (value < 0.66) {
      return 2;
    } else {
      return 3;
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!widget.loading) {
      return widget.child;
    }
    return Stack(
      children: [
        widget.child,
        ColoredBox(
          color: Colors.black54,
          child: Center(
            child: Container(
              constraints: const BoxConstraints(
                  minHeight: 180, maxHeight: 180, minWidth: 180, maxWidth: 180),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: context.colorScheme.onPrimary,
                  border:
                      Border.all(color: context.colorScheme.primary, width: 5)),
              child: PagePadding(
                scale: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircularProgressIndicator(),
                    AnimatedBuilder(
                      animation: _controller,
                      builder: (BuildContext context, Widget? child) {
                        int numberOfDots = getNumberOfDots(_controller.value);
                        return Text(
                          'Mohon Tunggu${' .' * numberOfDots}',
                          style: context.textTheme.titleSmall?.copyWith(
                              color: context.isDarkMode ? Colors.white : null),
                        );
                      },
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

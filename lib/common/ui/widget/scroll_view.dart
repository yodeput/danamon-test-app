import 'package:flutter/material.dart';

horizontalScrollView({
  required BuildContext context,
  required List<dynamic> dataList,
  required double height,
  required double width,
  required IndexedWidgetBuilder itemBuilder,
  ScrollController? controller,
  Widget? startWidget,
  Widget? moreWidget,
  double startPadding = 12,
  double endPadding = 12,
}) {
  return SizedBox(
    height: height,
    width: dataList.length * width * 5.03,
    child: ListView(
      controller: controller,
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      children: [
        startWidget ?? SizedBox.square(dimension: startPadding),
        ListView.builder(
          primary: false,
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: dataList.length,
          itemBuilder: itemBuilder,
        ),
        moreWidget ?? Container(),
        SizedBox.square(dimension: startPadding),
      ],
    ),
  );
}

/* horizontalScrollView2({
  required List<dynamic> dataList,
  required double height,
  required double widht,
  required List<Widget> children,
  ScrollController? controller,
  Widget? startWidget,
  Widget? moreWidget,
  double startPadding = .015,
  double endPadding = .015,
}) {
  var size = MediaQuery.of(Get.context!).size;
  var themeData = Theme.of(Get.context!);

  var aa = <Widget>[];
  aa.add(startWidget ?? PaddingPage(child: Container(), size: startPadding));
  aa.addAll(children);
  aa.add(moreWidget ?? Container());
  aa.add(PaddingPage(child: Container(), size: endPadding));
  return SizedBox(
    width: dataList.length * widht * dataList.length,
    child: SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      controller: controller,
      scrollDirection: Axis.horizontal,
      child: Row(children: aa),
    ),
  );
}

Widget PullToRefresh({
  required Widget child,
  required RefreshController controller,
  VoidCallback? onRefresh,
  VoidCallback? onLoading,
}) {
  var themeData = Theme.of(Get.context!);
  return SmartRefresher(
    controller: controller,
    onRefresh: onRefresh,
    onLoading: onLoading,
    enablePullDown: true,
    enablePullUp: false,
    header: WaterDropMaterialHeader(
      backgroundColor: themeData.colorScheme.primary,
    ),
    child: child,
  );
} */

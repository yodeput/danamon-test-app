import 'package:danamonTest/common/gen/assets.gen.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

enum CustomImageShape {
  circle,
  rectangle,
  rounded,
}

class CustomImage extends StatelessWidget {
  const CustomImage({
    this.url,
    this.path,
    required this.width,
    required this.height,
    this.fit = BoxFit.cover,
    super.key,
  }) : shape = CustomImageShape.rectangle;

  const CustomImage.square({
    this.url,
    this.path,
    required double size,
    this.fit = BoxFit.cover,
    super.key,
  })  : width = size,
        height = size,
        shape = CustomImageShape.rectangle;

  const CustomImage.rounded({
    this.url,
    this.path,
    required double size,
    this.fit = BoxFit.cover,
    super.key,
  })  : width = size,
        height = size,
        shape = CustomImageShape.rounded;

  const CustomImage.circle({
    this.url,
    this.path,
    required double size,
    this.fit = BoxFit.cover,
    super.key,
  })  : width = size,
        height = size,
        shape = CustomImageShape.circle;

  final String? url;
  final String? path;
  final double width;
  final double height;
  final CustomImageShape shape;
  final BoxFit fit;

  @override
  Widget build(BuildContext context) {
    final Widget image = url != null
        ? CachedNetworkImage(
            imageUrl: url ?? '',
            width: width,
            height: height,
            fit: fit,
            progressIndicatorBuilder: (context, url, progress) {
              return Container(
                width: width,
                height: height,
                child: const Center(
                  child: CircularProgressIndicator(),
                ),
              );
            },
            errorWidget: (context, url, error) {
              return Container(
                width: width,
                height: height,
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                ),
                child: Center(
                  child: Assets.image.logo.brokenImage
                      .image(height: .8 * height, width: .8 * width),
                ),
              );
            },
          )
        : Image.asset(
            path ?? '',
            width: width,
            height: height,
            fit: fit,
            errorBuilder: (context, error, stackTrace) {
              return Container(
                width: width,
                height: height,
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                ),
                child: Center(
                  child: Assets.image.logo.brokenImage
                      .image(height: .8 * height, width: .8 * width),
                ),
              );
            },
          );

    return switch (shape) {
      CustomImageShape.circle => ClipOval(child: image),
      CustomImageShape.rectangle => image,
      CustomImageShape.rounded => Container(
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
          ),
          child: image)
    };
  }
}

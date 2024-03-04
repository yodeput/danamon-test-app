import 'package:danamonTest/common/ui/widget/spacer.dart';
import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:danamonTest/common/ui/widget/labeled_text_button.dart';
import 'package:danamonTest/common/util/urls.dart';

class AppVersion extends StatelessWidget {
  const AppVersion(
      {this.color, super.key, this.appName = true, this.versionCode = false});

  final Color? color;
  final bool appName;
  final bool versionCode;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return FutureBuilder(
      future: PackageInfo.fromPlatform(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const SizedBox();
        }

        final data = snapshot.data!;

        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (appName)
              Row(
                children: [
                  Text(
                    data.appName,
                    style: theme.textTheme.titleSmall?.copyWith(color: color),
                  ),
                  const CustomSpacer(
                    type: CustomSpacerType.horizontal,
                  ),
                ],
              ),
            if (versionCode)
              Text(
                'v${data.version} (${data.buildNumber})',
                style: theme.textTheme.bodySmall?.copyWith(color: color),
              )
            else
              Text(
                'v${data.version}',
                style: theme.textTheme.bodySmall?.copyWith(color: color),
              ),
          ],
        );
      },
    );
  }
}

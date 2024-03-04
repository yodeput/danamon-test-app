import 'package:danamonTest/common/extension/context.dart';
import 'package:danamonTest/common/ui/dialog/bottomsheet.dart';
import 'package:danamonTest/common/ui/widget/page.dart';
import 'package:danamonTest/common/ui/widget/spacer.dart';
import 'package:flutter/material.dart';

class InfoWidget extends StatelessWidget {
  const InfoWidget({super.key, required this.infos});

  final List<String> infos;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 6),
      child: InkWell(
        onTap: () => showInformation(context),
        child: const Icon(
          Icons.info_outline_rounded,
          size: 20,
          color: Colors.black54,
        ),
      ),
    );
  }

  showInformation(BuildContext context) {
    CustomBottomSheet().show(
      context,
      routeName: "/info",
      child: PagePadding(
        scale: 2,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.info_outline_rounded,
                  ),
                  CustomSpacer(type: CustomSpacerType.horizontal),
                  Text(
                    'Informasi',
                    style: context.textTheme.titleLarge,
                  ),
                ],
              ),
            ),
            CustomSpacer(
              scale: 3,
            ),
            Column(
              children: infos
                  .map((e) => Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '•',
                                style: context.textTheme.bodyLarge,
                              ),
                              CustomSpacer(type: CustomSpacerType.horizontal),
                              Expanded(
                                child: Text(
                                  e,
                                  style: context.textTheme.bodyLarge,
                                  maxLines: 2,
                                ),
                              ),
                            ],
                          ),
                          CustomSpacer(),
                        ],
                      ))
                  .toList(),
            ),
            CustomSpacer(
              scale: 2,
            ),
            ElevatedButton(
              onPressed: () => context.back(),
              style: ElevatedButton.styleFrom(
                backgroundColor: context.colorScheme.primary,
              ),
              child: Text(
                'Tutup',
                style: context.textTheme.titleMedium?.copyWith(
                  color: context.colorScheme.onPrimary,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

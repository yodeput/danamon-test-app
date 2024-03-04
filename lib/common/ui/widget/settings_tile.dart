import 'package:danamonTest/common/extension/context.dart';
import 'package:flutter/material.dart';

class SettingsTile extends StatelessWidget {
  SettingsTile({
    required this.icon,
    required this.label,
    required this.onTap,
    this.roundedBottom = false,
    this.roundedTop = false,
    super.key,
    this.trailingIcon,
    this.trailingWidget,
  });

  final IconData icon;
  final IconData? trailingIcon;
  final Widget? trailingWidget;
  final String label;
  final bool roundedBottom;
  final bool roundedTop;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: context.colorScheme.primaryContainer,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(roundedTop ? 8 : 0),
          topRight: Radius.circular(roundedTop ? 8 : 0),
          bottomLeft: Radius.circular(roundedBottom ? 8 : 0),
          bottomRight: Radius.circular(roundedBottom ? 8 : 0),
        ),
      ),
      leading: Icon(icon, color: context.colorScheme.onPrimaryContainer),
      trailing: trailingIcon != null
          ? Icon(trailingIcon, color: context.colorScheme.onPrimaryContainer)
          : trailingWidget,
      title: Text(
        label,
        style: context.textTheme.bodyLarge
            ?.copyWith(color: context.colorScheme.onPrimaryContainer),
      ),
      onTap: onTap,
    );
  }
}

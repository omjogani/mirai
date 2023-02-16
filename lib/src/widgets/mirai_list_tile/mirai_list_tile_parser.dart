import 'package:flutter/material.dart';
import 'package:mirai/src/action/mirai_action_parser.dart';
import 'package:mirai/src/ui/mirai_edge_insets/mirai_edge_insets.dart';
import 'package:mirai/src/utils/color_utils.dart';
import 'package:mirai/src/utils/widget_type.dart';
import 'package:mirai/src/widgets/framework.dart';
import 'package:mirai/src/widgets/mirai.dart';
import 'package:mirai/src/widgets/mirai_list_tile/mirai_list_tile.dart';

class MiraiListTileParser extends MiraiParser<MiraiListTile> {
  const MiraiListTileParser({this.onTap});

  final Function()? onTap;

  @override
  MiraiListTile getModel(Map<String, dynamic> json) =>
      MiraiListTile.fromJson(json);

  @override
  String get type => WidgetType.listTile.name;

  @override
  Widget parse(BuildContext context, MiraiListTile model) {
    return ListTile(
      onTap: onTap, //model.onTap.onCall(context),
      onLongPress: () => model.onLongPress.onCall(context),
      leading: Mirai.fromJson(model.leading, context),
      title: Mirai.fromJson(model.title, context),
      subtitle: Mirai.fromJson(model.subtitle, context),
      trailing: Mirai.fromJson(model.trailing, context),
      isThreeLine: model.isThreeLine,
      dense: model.dense,
      style: model.style,
      selectedColor: model.selectedColor?.toColor,
      iconColor: model.iconColor?.toColor,
      textColor: model.textColor?.toColor,
      contentPadding: model.contentPadding?.parse,
      enabled: model.enabled,
      selected: model.selected,
      focusColor: model.focusColor?.toColor,
      hoverColor: model.hoverColor?.toColor,
      autofocus: model.autofocus,
      tileColor: model.tileColor?.toColor,
      selectedTileColor: model.selectedTileColor?.toColor,
      enableFeedback: model.enableFeedback,
      horizontalTitleGap: model.horizontalTitleGap,
      minVerticalPadding: model.minVerticalPadding,
      minLeadingWidth: model.minLeadingWidth,
    );
  }
}

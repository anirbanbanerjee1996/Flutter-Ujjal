import 'package:flutter/foundation.dart';

enum LayoutGroup {
  nonScrollable,
  scrollable,
}

abstract class HasLayoutGroup {
  LayoutGroup get layoutGroup;
  VoidCallback get onLayoutToggle;
}

enum LayoutType {
  rowColumn,
  baseline,
  stack,
  expanded,
  padding,
  pageView,
  list,
  slivers,
  hero,
  nested,
}

Map<LayoutType, String> layoutNames = {
  LayoutType.rowColumn: '',
  LayoutType.baseline: '',
  LayoutType.stack: '',
  LayoutType.expanded: '',
  LayoutType.padding: '',
  LayoutType.pageView: '',
  LayoutType.list: '',
  LayoutType.slivers: '',
  LayoutType.hero: '',
  LayoutType.nested: '',
};

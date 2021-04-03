import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_unit/storage/po/node_po.dart';

class GlobalState extends Equatable {
  final String fontFamily;
  final MaterialColor themeColor;
  final bool showBackGround;
  final int codeStyleIndex;
  final int itemStyleIndex;

  const GlobalState({
    this.fontFamily = 'SourceHanSans',
    this.themeColor = Colors.blue,
    this.showBackGround = true,
    this.codeStyleIndex,
    this.itemStyleIndex,
  });

  @override
  List<Object> get props =>
      [ fontFamily, themeColor, showBackGround, codeStyleIndex,itemStyleIndex];

  GlobalState copyWith({
    double height,
    String fontFamily,
    MaterialColor themeColor,
    bool showBackGround,
    int codeStyleIndex,
    int itemStyleIndex,
  }) =>
      GlobalState(
        fontFamily: fontFamily ?? this.fontFamily,
        themeColor: themeColor ?? this.themeColor,
        showBackGround: showBackGround ?? this.showBackGround,
        codeStyleIndex: codeStyleIndex ?? this.codeStyleIndex,
        itemStyleIndex: itemStyleIndex ?? this.itemStyleIndex,
      );

  @override
  String toString() {
    return 'GlobalState{ fontFamily: $fontFamily, themeColor: $themeColor, showBackGround: $showBackGround, codeStyleIndex: $codeStyleIndex, itemStyleIndex: $itemStyleIndex}';
  }


}

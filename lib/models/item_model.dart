import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'item_model.freezed.dart';
part 'item_model.g.dart';

@freezed
abstract class Item implements _$Item {
  const Item._();

  const factory Item({
    String? id,
    required String name,
    @Default(false) bool obtained,
  }) = _Item;

  factory Item.empty() => Item(name: '');

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
}

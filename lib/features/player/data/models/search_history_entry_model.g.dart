// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_history_entry_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SearchHistoryEntryModel _$SearchHistoryEntryModelFromJson(
  Map<String, dynamic> json,
) => _SearchHistoryEntryModel(
  query: json['query'] as String,
  searchedAt: _dateTimeFromIso(json['searchedAt']),
);

Map<String, dynamic> _$SearchHistoryEntryModelToJson(
  _SearchHistoryEntryModel instance,
) => <String, dynamic>{
  'query': instance.query,
  'searchedAt': _dateTimeToUtcIso(instance.searchedAt),
};

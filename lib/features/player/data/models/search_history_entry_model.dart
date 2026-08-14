import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_history_entry_model.freezed.dart';
part 'search_history_entry_model.g.dart';

@freezed
abstract class SearchHistoryEntryModel with _$SearchHistoryEntryModel {
  const factory SearchHistoryEntryModel({
    required String query,
    @JsonKey(toJson: _dateTimeToUtcIso, fromJson: _dateTimeFromIso)
    required DateTime searchedAt,
  }) = _SearchHistoryEntryModel;

  factory SearchHistoryEntryModel.fromJson(Map<String, dynamic> json) =>
      _$SearchHistoryEntryModelFromJson(json);
}

String _dateTimeToUtcIso(DateTime value) => value.toUtc().toIso8601String();

DateTime _dateTimeFromIso(Object? value) =>
    DateTime.parse(value! as String).toLocal();

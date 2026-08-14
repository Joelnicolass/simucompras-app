import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_history_entry.freezed.dart';

@freezed
abstract class SearchHistoryEntry with _$SearchHistoryEntry {
  const factory SearchHistoryEntry({
    required String query,
    required DateTime searchedAt,
  }) = _SearchHistoryEntry;
}

import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../../domain/datasources/weekly_challenge_local_datasource.dart';
import '../../domain/entities/weekly_challenge.dart';

class WeeklyChallengeLocalDatasourceImpl
    implements WeeklyChallengeLocalDatasource {
  WeeklyChallengeLocalDatasourceImpl(this._prefs);

  final SharedPreferences _prefs;

  static const _key = 'player_weekly_challenge';

  @override
  Future<WeeklyChallenge?> read() async {
    final raw = _prefs.getString(_key);
    if (raw == null || raw.isEmpty) return null;
    try {
      final json = jsonDecode(raw) as Map<String, dynamic>;
      return _fromJson(json);
    } catch (_) {
      await _prefs.remove(_key);
      return null;
    }
  }

  @override
  Future<void> save(WeeklyChallenge challenge) async {
    await _prefs.setString(_key, jsonEncode(_toJson(challenge)));
  }

  @override
  Future<void> clear() async {
    await _prefs.remove(_key);
  }

  Map<String, dynamic> _toJson(WeeklyChallenge c) {
    final status = c.status.name;
    return switch (c) {
      DistinctCategoriesWeekly(
        :final id,
        :final weekKey,
        :final title,
        :final description,
        :final target,
        :final progress,
        :final seenCategoryIds,
        :final rewardPesos,
      ) =>
        {
          'type': 'distinctCategories',
          'id': id,
          'weekKey': weekKey,
          'title': title,
          'description': description,
          'target': target,
          'progress': progress,
          'seenCategoryIds': seenCategoryIds,
          'rewardPesos': rewardPesos,
          'status': status,
        },
      SuperOffersCountWeekly(
        :final id,
        :final weekKey,
        :final title,
        :final description,
        :final target,
        :final progress,
        :final rewardPesos,
      ) =>
        {
          'type': 'superOffersCount',
          'id': id,
          'weekKey': weekKey,
          'title': title,
          'description': description,
          'target': target,
          'progress': progress,
          'rewardPesos': rewardPesos,
          'status': status,
        },
      TotalSpendWeekly(
        :final id,
        :final weekKey,
        :final title,
        :final description,
        :final target,
        :final progress,
        :final rewardPesos,
      ) =>
        {
          'type': 'totalSpend',
          'id': id,
          'weekKey': weekKey,
          'title': title,
          'description': description,
          'target': target,
          'progress': progress,
          'rewardPesos': rewardPesos,
          'status': status,
        },
    };
  }

  WeeklyChallenge? _fromJson(Map<String, dynamic> json) {
    final type = json['type'] as String?;
    final status = WeeklyChallengeStatus.values.firstWhere(
      (s) => s.name == json['status'],
      orElse: () => WeeklyChallengeStatus.active,
    );
    final id = json['id'] as String? ?? '';
    final weekKey = json['weekKey'] as String? ?? '';
    final title = json['title'] as String? ?? '';
    final description = json['description'] as String? ?? '';
    final target = (json['target'] as num?)?.toInt() ?? 1;
    final progress = (json['progress'] as num?)?.toInt() ?? 0;
    final rewardPesos = (json['rewardPesos'] as num?)?.toInt() ?? 0;

    return switch (type) {
      'distinctCategories' => WeeklyChallenge.distinctCategories(
        id: id,
        weekKey: weekKey,
        title: title,
        description: description,
        target: target,
        progress: progress,
        seenCategoryIds: (json['seenCategoryIds'] as List<dynamic>?)
                ?.map((e) => e as String)
                .toList() ??
            const [],
        rewardPesos: rewardPesos,
        status: status,
      ),
      'superOffersCount' => WeeklyChallenge.superOffersCount(
        id: id,
        weekKey: weekKey,
        title: title,
        description: description,
        target: target,
        progress: progress,
        rewardPesos: rewardPesos,
        status: status,
      ),
      'totalSpend' => WeeklyChallenge.totalSpend(
        id: id,
        weekKey: weekKey,
        title: title,
        description: description,
        target: target,
        progress: progress,
        rewardPesos: rewardPesos,
        status: status,
      ),
      _ => null,
    };
  }
}

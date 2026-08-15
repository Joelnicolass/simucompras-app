import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../../domain/datasources/missions_local_datasource.dart';
import '../../domain/entities/mission.dart';

class MissionsLocalDatasourceImpl implements MissionsLocalDatasource {
  MissionsLocalDatasourceImpl(this._prefs);

  final SharedPreferences _prefs;

  static const _key = 'player_missions';

  @override
  Future<List<Mission>> readMissions() async {
    final raw = _prefs.getString(_key);
    if (raw == null || raw.isEmpty) return const [];
    try {
      final list = jsonDecode(raw) as List<dynamic>;
      return list
          .map((e) => _missionFromJson(e as Map<String, dynamic>))
          .whereType<Mission>()
          .toList();
    } catch (_) {
      await _prefs.remove(_key);
      return const [];
    }
  }

  @override
  Future<void> saveMissions(List<Mission> missions) async {
    final payload = missions.map(_missionToJson).toList();
    await _prefs.setString(_key, jsonEncode(payload));
  }

  Map<String, dynamic> _missionToJson(Mission mission) {
    final status = mission.status.name;
    return switch (mission) {
      BuyCategoryMission(
        :final id,
        :final categoryId,
        :final title,
        :final description,
        :final rewardPesos,
      ) =>
        {
          'type': 'buyCategory',
          'id': id,
          'categoryId': categoryId,
          'title': title,
          'description': description,
          'rewardPesos': rewardPesos,
          'status': status,
        },
      FindSuperOfferMission(
        :final id,
        :final title,
        :final description,
        :final rewardPesos,
      ) =>
        {
          'type': 'findSuperOffer',
          'id': id,
          'title': title,
          'description': description,
          'rewardPesos': rewardPesos,
          'status': status,
        },
      BuyExpensiveMission(
        :final id,
        :final minPrice,
        :final title,
        :final description,
        :final rewardPesos,
      ) =>
        {
          'type': 'buyExpensive',
          'id': id,
          'minPrice': minPrice,
          'title': title,
          'description': description,
          'rewardPesos': rewardPesos,
          'status': status,
        },
      BuyCheapDealMission(
        :final id,
        :final minDiscount,
        :final title,
        :final description,
        :final rewardPesos,
      ) =>
        {
          'type': 'buyCheapDeal',
          'id': id,
          'minDiscount': minDiscount,
          'title': title,
          'description': description,
          'rewardPesos': rewardPesos,
          'status': status,
        },
      BuyKeywordMission(
        :final id,
        :final keyword,
        :final title,
        :final description,
        :final rewardPesos,
      ) =>
        {
          'type': 'buyKeyword',
          'id': id,
          'keyword': keyword,
          'title': title,
          'description': description,
          'rewardPesos': rewardPesos,
          'status': status,
        },
    };
  }

  Mission? _missionFromJson(Map<String, dynamic> json) {
    final type = json['type'] as String?;
    final status = MissionStatus.values.firstWhere(
      (s) => s.name == json['status'],
      orElse: () => MissionStatus.active,
    );
    final id = json['id'] as String? ?? '';
    final title = json['title'] as String? ?? '';
    final description = json['description'] as String? ?? '';
    final rewardPesos = (json['rewardPesos'] as num?)?.toInt() ?? 0;

    return switch (type) {
      'buyCategory' => Mission.buyCategory(
        id: id,
        categoryId: json['categoryId'] as String? ?? '',
        title: title,
        description: description,
        rewardPesos: rewardPesos,
        status: status,
      ),
      'findSuperOffer' => Mission.findSuperOffer(
        id: id,
        title: title,
        description: description,
        rewardPesos: rewardPesos,
        status: status,
      ),
      'buyExpensive' => Mission.buyExpensive(
        id: id,
        minPrice: (json['minPrice'] as num?)?.toInt() ?? 0,
        title: title,
        description: description,
        rewardPesos: rewardPesos,
        status: status,
      ),
      'buyCheapDeal' => Mission.buyCheapDeal(
        id: id,
        minDiscount: (json['minDiscount'] as num?)?.toDouble() ?? 0.4,
        title: title,
        description: description,
        rewardPesos: rewardPesos,
        status: status,
      ),
      'buyKeyword' => Mission.buyKeyword(
        id: id,
        keyword: json['keyword'] as String? ?? '',
        title: title,
        description: description,
        rewardPesos: rewardPesos,
        status: status,
      ),
      _ => null,
    };
  }
}

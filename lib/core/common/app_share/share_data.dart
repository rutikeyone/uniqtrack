import 'package:freezed_annotation/freezed_annotation.dart';

part 'share_data.freezed.dart';

part 'share_data.g.dart';

@freezed
class ShareData with _$ShareData {
  const factory ShareData({
    required String? en,
    required String? ru,
  }) = _ShareData;

  factory ShareData.fromJson(Map<String, dynamic> json) =>
      _$ShareDataFromJson(json);
}

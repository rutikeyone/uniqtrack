import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:share_plus/share_plus.dart';
import 'package:sprintf/sprintf.dart';
import 'package:uniqtrack/core/common/app_share/app_share_toolkit.dart';
import 'package:uniqtrack/core/common/app_share/share_data.dart';
import 'package:uniqtrack/data/accounts/providers/providers.dart';

part 'app_share_toolkit_impl.g.dart';

@riverpod
AppShareToolKit appShareTooKit(AppShareTooKitRef ref) {
  final firebaseFireStore = ref.watch(firebaseFireStoreProvider);

  return AppShareTooKitImpl(
    firebaseFireStore: firebaseFireStore,
  );
}

class AppShareTooKitImpl implements AppShareToolKit {
  final FirebaseFirestore _firebaseFireStore;

  static final shareTrack = "share/track";

  const AppShareTooKitImpl({
    required FirebaseFirestore firebaseFireStore,
  }) : _firebaseFireStore = firebaseFireStore;

  @override
  Future<void> shareTrackId(String id) async {
    final doc = await _firebaseFireStore.doc(shareTrack).get();
    final data = doc.data();
    if (data == null) return;

    final String defaultLocale = Platform.localeName;
    final shareData = ShareData.fromJson(data);

    final message = switch (defaultLocale) {
      "en_US" => shareData.en,
      "ru_RU" => shareData.ru,
      _ => shareData.en,
    };

    if (message == null) return;
    final value = sprintf(message, [id]);

    Share.share(value);
  }
}

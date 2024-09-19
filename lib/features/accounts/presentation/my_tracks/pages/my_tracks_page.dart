import 'package:flutter/material.dart';
import 'package:uniqtrack/core/presentation/widgets/common_app_bar.dart';
import 'package:uniqtrack/features/accounts/presentation/my_tracks/widgets/my_tracks_content_widget.dart';
import 'package:uniqtrack/generated/l10n.dart';

class MyTracksPage extends StatelessWidget {
  const MyTracksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        label: S.of(context).myTracks,
      ),
      body: MyTracksContentWidget(),
    );
  }
}

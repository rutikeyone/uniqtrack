import 'package:flutter/material.dart';
import 'package:uniqtrack/core/presentation/widgets/common_app_bar.dart';
import 'package:uniqtrack/features/accounts/presentation/my_favourite_tracks/widgets/favourite_tracks_widget.dart';
import 'package:uniqtrack/generated/l10n.dart';

class MyFavouriteTracksPage extends StatelessWidget {
  const MyFavouriteTracksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        label: S.of(context).favouriteTracks,
      ),
      body: FavouriteTracksWidget(),
    );
  }
}

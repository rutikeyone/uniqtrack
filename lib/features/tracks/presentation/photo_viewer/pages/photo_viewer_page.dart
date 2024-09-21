import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:photo_view/photo_view.dart';
import 'package:provider/provider.dart';
import 'package:uniqtrack/core/presentation/widgets/common_app_bar.dart';
import 'package:uniqtrack/core/theme/app_circle_progress_indicator.dart';
import 'package:uniqtrack/features/tracks/presentation/photo_viewer/stores/photo_viewer_store.dart';

class PhotoViewerPage extends StatelessWidget {
  const PhotoViewerPage({super.key});

  @override
  Widget build(BuildContext context) {
    final store = context.read<PhotoViewerStore>();

    return Scaffold(
      appBar: CommonAppBar(),
      body: SafeArea(
        child: Observer(
          builder: (context) {
            return store.state.when(
              none: () => const SizedBox.shrink(),
              bytes: (data) {
                return PhotoView(
                  imageProvider: MemoryImage(data),
                  loadingBuilder: (context, child) {
                    return Center(
                      child: AppCircleProgressIndicator(),
                    );
                  },
                );
              },
              link: (data) {
                return data != null
                    ? PhotoView(
                        imageProvider: NetworkImage(data),
                        loadingBuilder: (context, child) {
                          return Center(
                            child: AppCircleProgressIndicator(),
                          );
                        },
                      )
                    : const SizedBox.shrink();
              },
            );
          },
        ),
      ),
    );
  }
}

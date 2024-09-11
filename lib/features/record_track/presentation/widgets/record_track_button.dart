part of '../pages/record_track_page.dart';

class _RecordTrackButton extends StatelessWidget {
  const _RecordTrackButton();

  @override
  Widget build(BuildContext context) {
    final store = context.read<RecordTrackStore>();

    return Positioned(
      bottom: AppDiments.dm40,
      left: AppDiments.dm16,
      right: AppDiments.dm16,
      child: Observer(
        builder: (context) {
          return store.trackRecordStatusState.when(
            withoutRecording: () {
              return SizedBox(
                height: AppDiments.dm48,
                child: AppElevatedButton(
                  onPressed: store.startTracking,
                  text: S.of(context).startRecording,
                  textStyle: context.textTheme.labelLarge,
                  icon: Padding(
                    padding: const EdgeInsets.only(left: AppDiments.dm4),
                    child: SvgPicture.asset(
                      AppAssets.icons.play,
                      width: AppDiments.dm24,
                      height: AppDiments.dm24,
                    ),
                  ),
                ),
              );
            },
            recording: (positions, distance, duration, averageSpeed,
                maxAltitude, mode, isRecording) {
              return const SizedBox.shrink();
            },
          );
        },
      ),
    );
  }
}

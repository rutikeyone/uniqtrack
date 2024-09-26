import 'package:go_router_paths/go_router_paths.dart';
import 'package:uniqtrack/app/navigation/paths/add_or_edit_record_track_path.dart';
import 'package:uniqtrack/app/navigation/paths/login_path.dart';
import 'package:uniqtrack/app/navigation/paths/record_track_path.dart';
import 'package:uniqtrack/app/navigation/paths/details_path.dart';

class CommunityPath extends Path<CommunityPath> {
  CommunityPath() : super('community');

  LoginPath get login => LoginPath(this);

  RecordTrackPath get tracking => RecordTrackPath(this);

  AddOrEditRecordTrackPath get editRecord => AddOrEditRecordTrackPath(this);

  DetailsPath get details => DetailsPath(this);
}

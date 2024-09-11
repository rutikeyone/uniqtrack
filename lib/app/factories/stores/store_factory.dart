import 'package:uniqtrack/features/add_or_edit_record_track/presentation/stores/add_or_edit_record_track_store.dart';
import 'package:uniqtrack/features/forgot_password/presentation/stores/forgot_password_store.dart';
import 'package:uniqtrack/features/login/presentation%20/stores/login_store.dart';
import 'package:uniqtrack/features/record_track/presentation/stores/record_track_store.dart';
import 'package:uniqtrack/features/register/presentation/stores/register_store.dart';

abstract interface class StoreFactory {
  RegisterStore createRegisterStore();

  LoginStore createLoginStore();

  ForgotPasswordStore createForgotPasswordStore(String? email);

  RecordTrackStore createRecordTrackStore();

  AddOrEditRecordTrackStore createAddOrEditRecordTrackStore();
}

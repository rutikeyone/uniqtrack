import 'package:uniqtrack/core/common/common_ui/common_ui_delegate.dart';
import 'package:uniqtrack/features/register/presentation/store/register_store.dart';

abstract interface class StoreFactory {
  RegisterStore createRegisterStore();
  CommonUIDelegate createCommonUIDelegate();
}

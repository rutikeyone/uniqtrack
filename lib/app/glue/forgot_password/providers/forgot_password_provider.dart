import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uniqtrack/app/factories/stores/store_factory_impl.dart';
import 'package:uniqtrack/app/glue/forgot_password/factories/forgot_password_store_builder_impl.dart';
import 'package:uniqtrack/app/glue/forgot_password/repositories/forgot_password_adapter_repository.dart';
import 'package:uniqtrack/data/accounts/providers/accounts_provider.dart';
import 'package:uniqtrack/features/forgot_password/domain/repositories/forgot_password_repository.dart';
import 'package:uniqtrack/features/forgot_password/presentation/stores/forgot_password_store.dart';

part 'forgot_password_builder_provider.dart';
part 'forgot_password_repository.dart';
part 'forgot_password_provider.g.dart';
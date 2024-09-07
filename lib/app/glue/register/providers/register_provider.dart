import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uniqtrack/app/factories/stores/store_factory_impl.dart';
import 'package:uniqtrack/app/glue/register/factories/register_store_builder_impl.dart';
import 'package:uniqtrack/app/glue/register/mappers/file_mapper.dart';
import 'package:uniqtrack/app/glue/register/mappers/gender_mapper.dart';
import 'package:uniqtrack/app/glue/register/repositories/register_adapter_repository.dart';
import 'package:uniqtrack/data/accounts/providers/accounts_provider.dart';
import 'package:uniqtrack/features/register/domain/repositorories/register_repository.dart';
import 'package:uniqtrack/features/register/presentation/stores/register_store.dart';

part 'gender_mapper_provider.dart';
part 'file_mapper_provider.dart';
part 'image_repository_provider.dart';
part 'register_store_builder_provider.dart';
part 'register_provider.g.dart';
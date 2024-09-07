import 'package:generic_usecase/generic_usecase.dart';
import 'package:uniqtrack/app/app_state/domain/entities/user.dart';

abstract class AuthStateChangesUseCase
    extends NoParamsStreamUsecase<User?> {}

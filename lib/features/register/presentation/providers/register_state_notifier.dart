import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uniqtrack/features/register/domain/repositorories/image_repository.dart';
import 'package:uniqtrack/features/register/presentation/providers/state/gender.dart';
import 'package:uniqtrack/features/register/presentation/providers/state/image_picker_mode.dart';
import 'package:uniqtrack/features/register/presentation/providers/state/register_state.dart';

class RegisterStateNotifier extends StateNotifier<RegisterState> {
  RegisterStateNotifier() : super(const RegisterState());

  void updateGender(Gender gender) {
    final placeholderImageMode = ImagePickerMode.placeholder(gender: gender);
    final newState = state.copyWith(mode: placeholderImageMode);

    state = newState;
  }


  Future<void> pickImage(ImageRepository imageRepository) async {
    final image = await imageRepository.getImage();
  }
}

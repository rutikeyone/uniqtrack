import 'package:mobx/mobx.dart';
import 'package:uniqtrack/core/presentation/validation/entities/email.dart';
import 'package:uniqtrack/core/presentation/validation/entities/name.dart';
import 'package:uniqtrack/core/presentation/validation/entities/password.dart';
import 'package:uniqtrack/features/register/domain/repositorories/image_repository.dart';
import 'package:uniqtrack/features/register/presentation/store/state/gender_state.dart';
import 'package:uniqtrack/features/register/presentation/store/state/image_picker_mode_state.dart';
import 'package:uniqtrack/features/register/presentation/store/state/register_actions.dart';
import 'package:uniqtrack/features/register/presentation/store/state/register_state.dart';

part 'register_store.g.dart';

abstract interface class RegisterStoreBuilder {
  RegisterStore create();
}

class RegisterStore = _RegisterStore with _$RegisterStore;

abstract class _RegisterStore with Store {
  final ImageRepository _imageRepository;

  _RegisterStore({
    required ImageRepository imageRepository,
  }) : _imageRepository = imageRepository;

  @observable
  ImagePickerModeState pickerModeState =
      const ImagePickerModeState.placeholder();

  @observable
  Email emailState = const Email.pure();

  @observable
  Password passwordState = const Password.pure();

  @observable
  Name nameState = const Name.pure();

  @observable
  RegisterActions? actions;

  @computed
  RegisterState get state => RegisterState(
        modeState: pickerModeState,
        email: emailState,
        password: passwordState,
      );

  @computed
  bool get isMaleSelectedState => state.isMaleSelected;

  @computed
  bool get isFemaleSelectedState => state.isFemaleSelected;

  @action
  Future<void> _chooseImageFromGallery() async {
    final bytes = await _imageRepository.chooseImageFromGallery();
  }

  @action
  Future<void> _chooseImageFromCamera() async {
    final bytes = await _imageRepository.chooseImageFromCamera();
  }

  @action
  void updateGender(GenderState newGenderState) {
    final newPickerModeState =
        ImagePickerModeState.placeholder(genderState: newGenderState);

    pickerModeState = newPickerModeState;
  }

  @action
  void showImageSourceChooser() {
    actions = RegisterActions.showImageSourceChooser(
      chooseImageFromGallery: _chooseImageFromGallery,
      chooseImageFromCamera: _chooseImageFromCamera,
    );
  }

  @action
  void updateEmail(String? value) {
    if (value == null) return;
    final newEmailState = Email.dirty(value);

    emailState = newEmailState;
  }

  @action
  void updatePassword(String? value) {
    if (value == null) return;
    final newPasswordState = Password.dirty(value);

    passwordState = newPasswordState;
  }

  @action
  void updateName(String? value) {
    if (value == null) return;
    final newNameState = Name.dirty(value);

    nameState = newNameState;
  }
}

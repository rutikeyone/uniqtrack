import 'package:formz/formz.dart';
import 'package:mobx/mobx.dart';
import 'package:uniqtrack/core/presentation/validation/entities/email.dart';
import 'package:uniqtrack/core/presentation/validation/entities/name.dart';
import 'package:uniqtrack/core/presentation/validation/entities/password.dart';
import 'package:uniqtrack/features/register/domain/entities/file.dart';
import 'package:uniqtrack/features/register/domain/repositorories/register_repository.dart';
import 'package:uniqtrack/features/register/presentation/store/state/gender_state.dart';
import 'package:uniqtrack/features/register/presentation/store/state/image_picker_mode_state.dart';
import 'package:uniqtrack/features/register/presentation/store/state/register_actions.dart';
import 'package:uniqtrack/features/register/presentation/store/state/register_state.dart';
import 'package:uniqtrack/features/register/presentation/store/state/register_status_state.dart';

part 'register_store.g.dart';

abstract interface class RegisterStoreBuilder {
  RegisterStore create();
}

class RegisterStore = _RegisterStore with _$RegisterStore;

abstract class _RegisterStore with Store {
  final RegisterRepository _imageRepository;

  _RegisterStore({
    required RegisterRepository imageRepository,
  }) : _imageRepository = imageRepository;

  @observable
  ImagePickerModeState pickerModeState =
      const ImagePickerModeState.placeholder();

  @observable
  GenderState genderState = const GenderState.male();

  @observable
  Email emailState = const Email.pure();

  @observable
  Password passwordState = const Password.pure();

  @observable
  Name nameState = const Name.pure();

  @observable
  RegisterStatusState registerStatusState = const RegisterStatusState.pure();

  @observable
  RegisterActions? actions;

  @computed
  RegisterState get state => RegisterState(
        modeState: pickerModeState,
        email: emailState,
        password: passwordState,
        gender: genderState,
        name: nameState,
        canRegister: canRegister,
        registerStatusState: registerStatusState,
      );

  @computed
  bool get isMaleSelectedState => state.isMaleSelected;

  @computed
  bool get isFemaleSelectedState => state.isFemaleSelected;

  @computed
  bool get canRegister {
    final List<FormzInput> inputs = [emailState, passwordState, nameState];
    final isAllInputValidate = inputs.every((input) => input.isValid);
    final registerInProgress = registerStatusState.maybeWhen(
      pending: () => true,
      orElse: () => false,
    );

    return isAllInputValidate && !registerInProgress;
  }

  @action
  Future<void> _chooseImageFromGallery() async {
    final bytes = await _imageRepository.chooseImageFromGallery();
    _handleChooseImage(bytes);
  }

  @action
  Future<void> _chooseImageFromCamera() async {
    final bytes = await _imageRepository.chooseImageFromCamera();
    _handleChooseImage(bytes);
  }

  @action
  void updateGender(GenderState newGenderState) {
    genderState = newGenderState;
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

  @action
  void register() {
    final canRegister = state.canRegister;
    if (!canRegister) return;

    final email = state.email.value;
    final name = state.name.value;
    final password = state.password.value;
  }

  void _handleChooseImage(File? file) {
    if (file == null) return;

    final photoImagePickerModeState = ImagePickerModeState.photo(file: file);
    pickerModeState = photoImagePickerModeState;
  }
}

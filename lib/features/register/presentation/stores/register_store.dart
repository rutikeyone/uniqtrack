import 'package:formz/formz.dart';
import 'package:mobx/mobx.dart';
import 'package:uniqtrack/core/common/common_ui/common_ui_delegate.dart';
import 'package:uniqtrack/core/common/exceptions/exceptions.dart';
import 'package:uniqtrack/core/common/strings/app_strings.dart';
import 'package:uniqtrack/core/presentation/validation/entities/email.dart';
import 'package:uniqtrack/core/presentation/validation/entities/name.dart';
import 'package:uniqtrack/core/presentation/validation/entities/password.dart';
import 'package:uniqtrack/features/register/domain/entities/file.dart';
import 'package:uniqtrack/features/register/domain/entities/gender.dart';
import 'package:uniqtrack/features/register/domain/repositorories/register_repository.dart';
import 'package:uniqtrack/features/register/presentation/stores/state/register_actions.dart';
import 'package:uniqtrack/features/register/presentation/stores/state/register_state.dart';
import 'package:uniqtrack/features/register/presentation/stores/state/register_status_state.dart';
import 'package:uniqtrack/features/register/presentation/stores/state/image_picker_mode_state.dart';

part 'register_store.g.dart';

abstract interface class RegisterStoreBuilder {
  RegisterStore create();
}

class RegisterStore = _RegisterStore with _$RegisterStore;

abstract class _RegisterStore with Store {
  final RegisterRepository _imageRepository;
  final CommonUIDelegate _commonUIDelegate;

  _RegisterStore({
    required RegisterRepository imageRepository,
    required CommonUIDelegate commonUIDelegate,
  })  : _imageRepository = imageRepository,
        _commonUIDelegate = commonUIDelegate;

  @observable
  ImagePickerModeState pickerModeState =
      const ImagePickerModeState.placeholder();

  @observable
  Gender genderState = const Gender.male();

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
    final chooseImageResult = await _imageRepository.chooseImageFromGallery();

    chooseImageResult.fold(
      _handleFailureChooseImage,
      _handleSuccessChooseImage,
    );
  }

  @action
  Future<void> _chooseImageFromCamera() async {
    final chooseImageResult = await _imageRepository.chooseImageFromCamera();
    chooseImageResult.fold(
      _handleFailureChooseImage,
      _handleSuccessChooseImage,
    );
  }

  @action
  void updateGender(Gender newGender) {
    genderState = newGender;
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
  Future<void> register() async {
    final canRegister = state.canRegister;
    if (!canRegister) return;

    final email = state.email.value;
    final name = state.name.value;
    final password = state.password.value;
    final gender = state.gender;

    final file = pickerModeState.when(
      placeholder: () => null,
      photo: (file) => file,
    );

    actions = const RegisterActions.hideFocus();
    registerStatusState = const RegisterStatusState.pending();

    final registerResult = await _imageRepository.register(
      email: email,
      name: name,
      password: password,
      gender: gender,
      file: file,
    );

    registerResult.fold(
      _handleRegisterFailureResult,
      _handleRegisterSuccessResult,
    );
  }

  void _handleSuccessChooseImage(File? file) {
    if (file == null) return;

    final photoImagePickerModeState = ImagePickerModeState.photo(file: file);
    pickerModeState = photoImagePickerModeState;
  }

  void _handleFailureChooseImage(AppError l) {
    if (l.isCancelError) return;

    final header = l.header();
    final body = l.body();

    _commonUIDelegate.cupertinoDialog(
      header: header,
      body: body,
    );
  }

  void _handleRegisterFailureResult(AppError l) {
    registerStatusState = const RegisterStatusState.failure();
    if (l.isCancelError) return;

    final header = l.header();
    final body = l.body();

    _commonUIDelegate.cupertinoDialog(
      header: header,
      body: body,
    );
  }

  void _handleRegisterSuccessResult(_) {
    const duration = Duration(milliseconds: 200);

    registerStatusState = const RegisterStatusState.success();

    Future.delayed(duration, () {
      const header = AppStrings.notification();
      const body = AppStrings.theUserHasBeenSuccessfullyRegistered();

      _commonUIDelegate.cupertinoDialog(
        header: header,
        body: body,
      );
    });
  }
}

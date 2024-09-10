class RegexpPattern {
  static final RegExp space = RegExp("[ ]");

  static final RegExp email =
      RegExp(r"^[a-zA-Z0-9._-]{1,50}@([a-zA-Z0-9-]+\.)+[a-zA-Z]{2,}$");

  static final RegExp password = RegExp(r"^(?=.*[A-Za-z])[A-Za-z0-9]{8,}$");

  static final RegExp name = RegExp(r"^[А-Яа-яA-Za-z\s]{3,}$");
}

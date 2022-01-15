class User {
  String? _uid;
  String? _fullName;
  String? _email;
  String? _password;
  String? _gender;
  String? _weight;
  String? _length;
  String? _dof;

  static final User _user = User.singleton();

  static User get user => _user;

  User.singleton();

  User(this._uid, this._email);

  User.loginWithEmail(this._email, this._password);

  User.signupWithEmail(this._uid, this._email, this._fullName);

  User.data(this._uid, this._fullName, this._email, this._password,
      this._gender, this._weight, this._length, this._dof);

  String get password => _password ?? 'Password';

  String get email => _email ?? 'Email';

  String get fullName => _fullName ?? 'Name';

  String get uid => _uid ?? '';

  String get dof => _dof ?? '';

  set fullName(String value) {
    _fullName = value;
  }

  set dof(String value) {
    _dof = value;
  }

  String get length => _length ?? '';

  set length(String value) {
    _length = value;
  }

  String get weight => _weight ?? '';

  set weight(String value) {
    _weight = value;
  }

  String get gender => _gender ?? '';

  set gender(String value) {
    _gender = value;
  }

  set email(String value) {
    _email = value;
  }

  set password(String value) {
    _password = value;
  }
}

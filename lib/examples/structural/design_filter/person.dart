//classe aonde os criterios seram aplicados

class Person {
  String _name;
  String _gender;
  String _maritalStatus;

  Person(this._name, this._gender, this._maritalStatus);

  String getName() {
    return _name;
  }

  String getGender() {
    return _gender;
  }

  String getMaritalStatus() {
    return _maritalStatus;
  }
}

class Section {
  int _sectionId;
  String _sectionName;
  int _sectionStudentsCount;

  Section(this._sectionId, this._sectionName, this._sectionStudentsCount);

  int get sectionStudentsCount => _sectionStudentsCount;

  String get sectionName => _sectionName;

  int get sectionId => _sectionId;

  set sectionStudentsCount(int value) {
    _sectionStudentsCount = value;
  }

  set sectionName(String value) {
    _sectionName = value;
  }

  set sectionId(int value) {
    _sectionId = value;
  }
}

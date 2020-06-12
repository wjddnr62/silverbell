class DummyData {
  final String _title;
  final String _address;
  final String _callNumber;
  final int _personnel;
  final int _dementia; // 치매
  final int _rehab; //재활
  final int _physics; //물리
  final String _img;

  DummyData(this._title, this._address, this._callNumber, this._personnel, this._dementia, this._rehab, this._physics, this._img);

  String get title => _title;

  String get address => _address;

  String get callNumber => _callNumber;

  int get personnel => _personnel;

  int get dementia => _dementia;

  int get rehab => _rehab;

  int get physics => _physics;

  String get img => _img;
}
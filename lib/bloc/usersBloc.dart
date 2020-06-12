import 'package:silverbell/Repository/repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:rxdart/rxdart.dart';

class UsersBloc {
  static final UsersBloc _usersBloc = new UsersBloc._internal();

  factory UsersBloc() {
    return _usersBloc;
  }

  UsersBloc._internal();

  final _repository = Repository();

  int _number, _pageNum;

  get pageNum => _pageNum;

  set pageNum(value) {
    _pageNum = value;
  }

  int get number => _number;

  set number(int value) {
    _number = value;
  }

  Future<int> getUser(email, pass) {
    return _repository.getUser(email, pass);
  }
}
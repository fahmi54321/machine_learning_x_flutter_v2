import 'base_request_provider.dart';

abstract class BaseStateProvider<T> extends BaseRequestProvider {
  late T _state;

  T get state => _state;

  void initState(T initialState) {
    _state = initialState;
  }

  void setState(T newState) {
    _state = newState;
    notifyListeners();
  }

  void updateState(T Function(T current) builder) {
    _state = builder(_state);
    notifyListeners();
  }
}

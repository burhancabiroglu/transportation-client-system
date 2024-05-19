sealed class HomeState {
  const HomeState();
  static const none = HomeStateNone();
}

class HomeStateNone extends HomeState {
  const HomeStateNone();
}
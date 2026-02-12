abstract class UseCase<T, Params> {
  Future<T> call(Params params);
}

abstract class StreamUseCase<T, Params> {
  Stream<T> call(Params params);
}

abstract class SyncUseCase<T, Params> {
  T call(Params params);
}

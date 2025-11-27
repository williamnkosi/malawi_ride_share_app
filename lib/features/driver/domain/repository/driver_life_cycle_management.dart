abstract class DriverLifeCycleManagement {
  Future<void> initializeDriver({required String firebaseId});
  Future<void> goOnline({required String firebaseId});
  Future<void> goOffline({required String firebaseId});
  Future<void> updateDriverAvalability();
}

import 'package:get_it/get_it.dart';
import 'package:malawi_ride_share_app/repository/auth_repository.dart';
import 'package:malawi_ride_share_app/repository/location_repository.dart';

GetIt getIt = GetIt.instance;

void setupGetIt() async {
  getIt.registerSingleton<AuthRepository>(AuthRepository());
  getIt.registerSingleton<LocationRepository>(LocationRepository());
}

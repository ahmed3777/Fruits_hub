
import 'package:fruits_hub/core/services/database_services.dart';
import 'package:fruits_hub/core/services/firebase_auth_services.dart';
import 'package:fruits_hub/core/services/firestore_services.dart';
import 'package:fruits_hub/features/auth/data/repos/auth_repo_imp.dart';
import 'package:fruits_hub/features/auth/domin/repos/auth_repo.dart';
import 'package:get_it/get_it.dart';


final getIt = GetIt.instance;

void setupGetit() {
  getIt.registerSingleton<FirebaseAuthService>(FirebaseAuthService());
  getIt.registerSingleton<DatabaseServices>(FirestoreServices());

  getIt.registerSingleton<AuthRepo>(
    AuthRepoImp( firebaseAuthService: getIt<FirebaseAuthService>(),
     databaseServices: getIt<DatabaseServices>(),
     ),
  
  );
}
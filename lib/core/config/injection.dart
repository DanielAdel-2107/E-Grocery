part of 'config.dart';

class DependencyInjection {
  static Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();
    await initDi();
    CacheHelper().init();
    // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  }
}

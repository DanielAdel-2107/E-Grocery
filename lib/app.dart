import 'package:commerce/core/config/config.dart';
import 'package:commerce/core/routes/routes.dart';
import 'package:commerce/core/theme/theme.dart';
import 'package:commerce/features/auth/presentation/provider/login_with_google_provider.dart';
import 'package:commerce/features/entrypoint/pages/chat/provider/chat_provider.dart';
import 'package:commerce/features/entrypoint/pages/menu/presentation/provider/product_provider.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class RootApp extends StatelessWidget {
  const RootApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, ch) => DismissKeyboard(
        child: DevicePreview(builder: (context) => const MyApp()),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => store<ProductProvider>(),
        ),
        ChangeNotifierProvider(
          create: (context) => store<ChatProvider>(),
        ),
        ChangeNotifierProvider(
          create: (context) => store<LoginWithGoogleProvider>(),
        )
      ],
      child: MaterialApp(
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        debugShowCheckedModeBanner: false,
        theme: CoreThemeData.defaultTheme,
        initialRoute: RoutesName.initial,
        onGenerateRoute: AppRoute.generate,
      ),
    );
  }
}

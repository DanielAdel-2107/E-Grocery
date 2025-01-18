import 'package:commerce/core/database/cache/cache_helper.dart';
import 'package:commerce/core/services/api/dio_consumer.dart';
import 'package:commerce/features/auth/presentation/provider/login_provider.dart';
import 'package:commerce/features/auth/presentation/provider/register_provider.dart';
import 'package:commerce/features/entrypoint/pages/menu/presentation/provider/product_provider.dart';
import 'package:commerce/features/onboarding/data/onboarding_data.dart';
import 'package:commerce/features/onboarding/presentation/cubit/onboarding_cubit.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'di.dart';
part 'injection.dart';
part 'keyboard.dart';

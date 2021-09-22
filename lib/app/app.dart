// Copyright (c) 2021, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:dart_smarteam/smarteam.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_smarteam/app/constants.dart';
import 'package:flutter_smarteam/l10n/l10n.dart';
import 'package:flutter_smarteam/smarteam/app/presentation/blocs/auth/auth_bloc.dart';
import 'package:flutter_smarteam/smarteam/app/presentation/blocs/init/init_bloc.dart';
import 'package:flutter_smarteam/smarteam/login/data/providers/smarteam_user_provider.dart';
import 'package:flutter_smarteam/smarteam/login/data/repositories/smarteam_user_repository_imp.dart';
import 'package:flutter_smarteam/smarteam/login/domain/ports/smarteam_user_repository.dart';
import 'package:flutter_smarteam/smarteam/smarteam.dart';
import 'package:sizer/sizer.dart';

class App extends StatefulWidget {
  const App({Key? key, required this.smarteam}) : super(key: key);

  final Smarteam smarteam;

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  late final SmarteamUserProvider _smarteamLoginProvider;
  late final SmarteamUserRepository _smarteamLoginRepository;
  late final InitBloc _initBloc;
  late final AuthBloc _authBloc;

  @override
  void initState() {
    _smarteamLoginProvider = SmarteamUserProvider(widget.smarteam);
    _smarteamLoginRepository = SmarteamUserRepositoryImp(_smarteamLoginProvider);
    _initBloc = InitBloc(smarteam: widget.smarteam);
    _authBloc = AuthBloc(smarteamLoginRepository: _smarteamLoginRepository);
    super.initState();
  }

  @override
  void dispose() {
    _authBloc.close();
    _initBloc.close();
    widget.smarteam.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: kSmarteamThemeData,
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
        ],
        supportedLocales: AppLocalizations.supportedLocales,
        home: MultiBlocProvider(
          providers: [
            BlocProvider<InitBloc>.value(value: _initBloc),
            BlocProvider<AuthBloc>.value(value: _authBloc),
            BlocProvider<RouterBloc>(
              create: (context) => RouterBloc(initBloc: _initBloc, authBloc: _authBloc),
            ),
          ],
          child: const AppPage(),
        ),
      ),
    );
  }
}

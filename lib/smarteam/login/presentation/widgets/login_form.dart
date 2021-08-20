import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smarteam/l10n/l10n.dart';
import 'package:flutter_smarteam/smarteam/login/presentation/widgets/login_button.dart';
import 'package:flutter_smarteam/smarteam/login/presentation/widgets/remember_checkbox.dart';
import 'package:sizer/sizer.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _loginFormKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _usernameFocusNode = FocusNode();
  final _passwordFocusNode = FocusNode();
  var _rememberCredentials = false;
  var _usernameFirstEnter = true;
  var _passwordFirstEnter = true;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return SingleChildScrollView(
      child: Form(
        key: _loginFormKey,
        child: Padding(
          padding: MediaQuery.of(context).orientation == Orientation.portrait
              ? EdgeInsets.only(left: 7.w, top: 10.h, right: 7.w)
              : EdgeInsets.only(left: 5.h, top: 10.w, right: 5.h),
          child: Column(
            children: [
              TextFormField(
                controller: _usernameController,
                focusNode: _usernameFocusNode,
                validator: (value) {
                  if (_usernameFirstEnter) {
                    return null;
                  }
                  debugPrint('Username:$value');
                  return (value?.length ?? 0) <= 3 ? 'Cant be a less 3' : null;
                },
                decoration: InputDecoration(
                  labelText: l10n.loginUsernameText,
                ),
                onEditingComplete: () {
                  final nextWidget = _usernameController.text.length > 3 ? _passwordFocusNode : _usernameFocusNode;
                  FocusScope.of(context).requestFocus(nextWidget);
                },
                onChanged: (value) {
                  setState(() {
                    _usernameFirstEnter = false;
                  });
                },
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: _passwordController,
                focusNode: _passwordFocusNode,
                validator: (value) {
                  if (_passwordFirstEnter) {
                    return null;
                  }
                  debugPrint('Password:$value');
                  return (value?.length ?? 0) <= 4 ? 'Cant be a less 4' : null;
                },
                decoration: InputDecoration(
                  labelText: l10n.loginPasswordText,
                ),
                obscureText: true,
                onChanged: (value) {
                  setState(() {
                    _passwordFirstEnter = false;
                  });
                },
              ),
              const SizedBox(height: 10),
              RememberCheckbox(
                title: l10n.loginCheckboxText,
                value: _rememberCredentials && _formIsValidated(),
                enabled: _formIsValidated(),
                onChanged: (value) {
                  setState(() {
                    _rememberCredentials = value ?? false;
                  });
                },
              ),
              const SizedBox(height: 20),
              LoginButton(text: l10n.loginButtonText, enabled: _formIsValidated()),
            ],
          ),
        ),
      ),
    );
  }

  bool _formIsValidated() {
    final form = _loginFormKey.currentState;
    if (form == null) {
      return false;
    }

    return form.validate() && !_usernameFirstEnter && !_passwordFirstEnter;
  }
}

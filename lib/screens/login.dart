import 'package:flutter/material.dart';
import 'package:github_issues/enums/enums.dart';

class Login extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final _emailNameController = TextEditingController(),
      _passwordNameController = TextEditingController();
  final AuthStatus _status;
  final Function _logIn;

  Login({AuthStatus status = AuthStatus.Uninitialized, Function logIn})
      : _status = status,
        _logIn = logIn;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Welcome', style: Theme.of(context).textTheme.headline5),
              Container(height: 24),
              TextFormField(
                controller: _emailNameController,
                decoration: InputDecoration(
                  labelText: 'Email Address',
                ),
                validator: (String value) =>
                    value?.isEmpty ?? true ? 'This field is required' : null,
              ),
              Container(height: 8),
              TextFormField(
                controller: _passwordNameController,
                decoration: InputDecoration(
                  labelText: 'Password',
                ),
                obscureText: true,
                validator: (String value) =>
                    value?.isEmpty ?? true ? 'This field is required' : null,
              ),
              Container(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FlatButton(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: _status == AuthStatus.Authenticating
                        ? Container(
                            height: 20,
                            width: 20,
                            child: CircularProgressIndicator(
                              strokeWidth: 2,
                            ),
                          )
                        : Text('LOG IN'),
                    onPressed: _status == AuthStatus.Authenticating
                        ? null
                        : () {
                            if (_formKey.currentState.validate() &&
                                _logIn != null)
                              _logIn(_emailNameController.text,
                                  _passwordNameController.text);
                          },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

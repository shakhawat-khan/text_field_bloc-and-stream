import 'dart:core';

import 'package:flutter/material.dart';

import '../blocs/bloc.dart';

bool _validate = false;

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Column(
        children: [
          emailField(),
          passwordField(),
          Container(
            margin: EdgeInsets.only(top: 25.0),
          ),
          submitButton(),
        ],
      ),
    );
  }

  Widget emailField() {
    return StreamBuilder(
        stream: bloc.email,
        builder: (context, snapshot) {
          return TextField(
              onChanged: (newValue) {
                bloc.changeEmail(newValue);
              },
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: 'you@example.com',
                labelText: 'Email Address',
                errorText: snapshot.hasError ? '${snapshot.error}' : null,
              ));
        });
  }

  Widget passwordField() {
    return StreamBuilder(
        stream: bloc.password,
        builder: (context, snapshot) {
          return TextField(
            onChanged: (newValue) {
              bloc.changePassword(newValue);
            },
            decoration: InputDecoration(
              hintText: 'password',
              labelText: 'password',
              errorText: snapshot.hasError ? '${snapshot.error}' : null,
            ),
          );
        });
  }

  Widget submitButton() {
    return ElevatedButton(
      onPressed: () {},
      child: Text('LogIn'),
      style: ElevatedButton.styleFrom(
        primary: Colors.teal,
      ),
    );
  }
}

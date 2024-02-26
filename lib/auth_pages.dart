import 'package:flutter/material.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
        body: Center(
      child: Container(
          width: 500,
          height: 600,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: Colors.black45,
                width: 1,
              )),
          child: Column(
            children: [
              Expanded(
                  child: Container(
                margin: const EdgeInsets.all(8),
                width: 500,
                height: 400,
                child: Center(
                    child: Text(
                  'Autentification!',
                  style: theme.textTheme.labelLarge,
                )),
              )),
              Expanded(
                  child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 10),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 14),
                              child: TextField(
                                decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.login),
                                  border: OutlineInputBorder(),
                                  labelText: 'Login',
                                ),
                              )),
                          Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 14),
                              child: TextField(
                                decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.key),
                                  border: OutlineInputBorder(),
                                  labelText: 'Password',
                                ),
                              )),
                        ],
                      ))),
              Expanded(
                  child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 30),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                              flex: 1,
                              child: Container(
                                  constraints:
                                      const BoxConstraints(maxHeight: 100),
                                  width: 200,
                                  child: ElevatedButton(
                                      onPressed: () {
                                        Navigator.of(context).pushNamed('/');
                                      },
                                      child: Text(
                                        'Sign Up',
                                        style: theme.textTheme.bodyLarge,
                                      )))),
                          Expanded(
                              child: Container(
                            padding: const EdgeInsets.all(1),
                            child:
                                const Center(child: Text('Dont have account?')),
                          )),
                          Expanded(
                              flex: 1,
                              child: SizedBox(
                                  width: 200,
                                  child: OutlinedButton(
                                      onPressed: () {
                                        Navigator.of(context)
                                            .pushNamed('/auth/sign_in');
                                      },
                                      child: Text(
                                        'Sign In',
                                        style: theme.textTheme.bodyLarge,
                                      ))))
                        ],
                      )))
            ],
          )),
    ));
  }
}

enum Gender { male, female }

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    Gender? sex = Gender.male;
    double vertPadding = 10;
    return Scaffold(
      body: Center(
          child: Container(
              width: 500,
              height: 600,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Colors.black45,
                    width: 1,
                  )),
              child: Column(
                children: [
                  Expanded(
                      flex: 1,
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        child: Center(
                            child: Text(
                          'Registration',
                          style: theme.textTheme.labelLarge,
                        )),
                      )),
                  Expanded(
                      flex: 3,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 10),
                        child: Column(children: [
                          Expanded(
                              child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 8, vertical: vertPadding),
                                  child: const TextField(
                                    decoration: InputDecoration(
                                      prefixIcon: Icon(Icons.login),
                                      border: OutlineInputBorder(),
                                      labelText: 'Nickname',
                                    ),
                                  ))),
                          Expanded(
                              child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 8, vertical: vertPadding),
                                  child: const TextField(
                                    decoration: InputDecoration(
                                      prefixIcon: Icon(Icons.mail),
                                      border: OutlineInputBorder(),
                                      labelText: 'E-mail',
                                    ),
                                  ))),
                          Expanded(
                              child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 8, vertical: vertPadding),
                                  child: const TextField(
                                    decoration: InputDecoration(
                                      prefixIcon: Icon(Icons.key),
                                      border: OutlineInputBorder(),
                                      labelText: 'Password',
                                    ),
                                  ))),
                          Expanded(
                              child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 8, vertical: vertPadding),
                                  child: const TextField(
                                    decoration: InputDecoration(
                                      prefixIcon: Icon(Icons.key),
                                      border: OutlineInputBorder(),
                                      labelText: 'Repeat password',
                                    ),
                                  ))),
                          Expanded(
                              child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 8, vertical: vertPadding),
                                  child: Row(
                                    children: [
                                      Expanded(
                                          child: Row(
                                        children: [
                                          Expanded(
                                            child: Radio<Gender>(
                                              value: Gender.male,
                                              groupValue: sex,
                                              onChanged: (Gender? value) {
                                                () {
                                                  sex = value;
                                                };

                                                
                                              },
                                            ),
                                          ),
                                          Expanded(
                                            child: Text(
                                              'Male',
                                              style: theme.textTheme.bodyMedium,
                                            ),
                                          ),
                                          Expanded(
                                            child: Radio<Gender>(
                                              value: Gender.female,
                                              groupValue: sex,
                                              onChanged: (Gender? value) {
                                                () {
                                                  sex = value;
                                                };
                                              },
                                            ),
                                          ),
                                          Expanded(
                                            child: Text(
                                              'Female',
                                              style: theme.textTheme.bodyMedium,
                                            ),
                                          )
                                        ],
                                      ))
                                    ],
                                  ))),
                        ]),
                      )),
                  Expanded(
                      flex: 1,
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: vertPadding, horizontal: 30),
                        width: 200,
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pushNamed('/');
                            },
                            child: const Text('Sign In')),
                      ))
                ],
              ))),
    );
  }
}

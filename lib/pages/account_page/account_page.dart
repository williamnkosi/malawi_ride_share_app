import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:malawi_ride_share_app/features/auth/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:malawi_ride_share_app/shared/widgets/app_button.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leadingWidth: double.infinity,
          leading: const Padding(
            padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Account Page',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.account_circle,
                    size: 29,
                  ),
                ]),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(children: [
            const ListTile(
              title: Text('Settings'),
            ),
            const ListTile(
              title: Text('Account Information'),
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
                width: double.infinity,
                child: AppOutlineButton(
                    buttonText: "Sign Out",
                    onPressed: () {
                      context.read<AuthBloc>().add(const AuthEventSignOut());
                    })),
          ]),
        ));
  }
}

import 'package:account_entry/ui/colors/colors_app.dart';
import 'package:account_entry/ui/pages/create_users_page/widgets/add_user_widget.dart';
import 'package:account_entry/ui/pages/create_users_page/widgets/list_users_widget.dart';
import 'package:account_entry/ui/pages/create_users_page/widgets/start_button.dart';
import 'package:flutter/material.dart';

class CreateUsersPage extends StatelessWidget {
  CreateUsersPage({super.key});

  final _colorsApp = ColorsApp();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        //  constraints: BoxConstraints(maxHeight: 1000, maxWidth: 1000),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [_colorsApp.fonAppLeftColor, _colorsApp.fonAppRigtColor],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),

          child: Column(
            children: [
              SizedBox(height: 150),
              AddUserWidget(),
              SizedBox(height: 24),
              //ListUsersWidget(),
              Expanded(child: ListUsersWidget()),
              SizedBox(height: 24),
              StartButton(),
              SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}

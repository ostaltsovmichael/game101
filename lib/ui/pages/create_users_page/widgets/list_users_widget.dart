import 'package:account_entry/model/user.dart';
import 'package:account_entry/repository/user_repository.dart';
import 'package:account_entry/ui/styles/text_stales.dart';
import 'package:account_entry/ui/widgets/staticTextApp.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ListUsersWidget extends StatelessWidget {
  ListUsersWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserRepository>(context);

    return FutureBuilder(
      future: userProvider.getAllUser(),
      builder: (context, snapshot) {
        return ListView.builder(
          itemCount: snapshot.data?.length ?? 0,
          itemBuilder: (context, index) {
            User user = snapshot.data![index];
            {
              return Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  StaticTextApp(text: user.name[0].toUpperCase()),
                  SizedBox(width: 16),
                  StaticTextApp(text: user.name),
                  //  Text(user.name, style: _textStyles.countTextStyle),
                  SizedBox(width: 8),

                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,

                      children: [
                        IconButton(
                          onPressed: () {
                            userProvider.deleteUsers(user.id);
                          },
                          icon: Icon(Icons.delete),
                        ),
                        SizedBox(width: 8),
                      ],
                    ),
                  ),
                ],
              );
            }
          },
        );
      },
    );
  }
}

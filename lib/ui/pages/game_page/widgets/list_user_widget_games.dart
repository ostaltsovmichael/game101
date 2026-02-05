import 'package:account_entry/model/user.dart';
import 'package:account_entry/repository/user_repository.dart';

import 'package:account_entry/ui/pages/game_page/widgets/game_card_widget.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ListUserWidgetGames extends StatelessWidget {
  const ListUserWidgetGames({super.key});

  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserRepository>(context);

    return FutureBuilder(
      future: userProvider.getAllUser(),
      builder: (context, snapshot) {
        return ListView.builder(
          itemCount: snapshot.data!.length,
          itemBuilder: (context, index) {
            User user = snapshot.data![index];
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: GameCardWidget(
                name: user.name,
                point: user.point,
                id: user.id,
              ),
            );
          },
        );
      },
    );
  }
}

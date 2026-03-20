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
         // snapshot.data.sort((a,b)=> a.point.compareTo(b.point));
          itemCount: snapshot.data?.length ?? 0,
          itemBuilder: (context, index) {
            User user = snapshot.data![index];
            //snapshot.data!.sort((a,b)=> a.point.compareTo(b.point));

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

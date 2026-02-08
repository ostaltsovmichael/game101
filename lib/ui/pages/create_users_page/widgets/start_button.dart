import 'package:account_entry/generated/l10n.dart';
import 'package:account_entry/repository/router_repository.dart';
import 'package:account_entry/repository/user_repository.dart';
import 'package:account_entry/ui/widgets/staticTextApp.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class StartButton extends StatelessWidget {
  StartButton({super.key});

  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserRepository>(context);
    final routerProvider = Provider.of<RouterRepository>(context);
    return FutureBuilder(
      future: userProvider.getAllUser(),
      builder: (context, snapchot) {
        int? startActivBtn = snapchot.data!.length;
        if (startActivBtn >= 2) {
          return Container(
            constraints: BoxConstraints(maxHeight: 100),
            child: TextButton(
              onPressed: () {
                routerProvider.navigateToGamePage(context);
              },
              child: StaticTextApp(text: S.of(context).start),
            ),
          );
        } else {
          return Text('');
        }
      },
    );
  }
}

import 'package:account_entry/generated/l10n.dart';
import 'package:account_entry/repository/router_repository.dart';
import 'package:account_entry/repository/user_repository.dart';
import 'package:account_entry/ui/styles/text_stales.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class StartButton extends StatelessWidget {
  final AppTextStyle _textStyles = AppTextStyle();

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
              child: Text(
                S.of(context).start,
                style: _textStyles.countTextStyle,
              ),
            ),
          );
        } else {
          return Text('');
        }
      },
    );
  }
}

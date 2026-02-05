import 'package:account_entry/repository/raund_repository.dart';
import 'package:account_entry/ui/styles/text_stales.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RaundWidget extends StatelessWidget {
  const RaundWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final raundProvider = Provider.of<RaundRepository>(context);
    final textStyleApp = AppTextStyle();
    return Column(
      children: [
        SizedBox(height: 100),
        Text(
          'Раунд ${raundProvider.raund}',
          style: textStyleApp.countTextStyle,
        ),
        SizedBox(height: 10),
        TextButton(
          onPressed: () {
            raundProvider.incrementRaund();
          },
          child: Text('Завершить раунд'),
        ),
      ],
    );
  }
}

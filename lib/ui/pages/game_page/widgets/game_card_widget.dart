import 'package:account_entry/repository/router_repository.dart';
import 'package:account_entry/repository/user_repository.dart';
import 'package:account_entry/ui/colors/colors_app.dart';
import 'package:account_entry/ui/widgets/staticTextApp.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class GameCardWidget extends StatelessWidget {
  GameCardWidget({
    super.key,
    required String name,
    required int point,
    required id,
  }) : _name = name,
       _point = point,
       _id = id;

  final String _name;
  final int _point;
  final int _id;
  final TextEditingController _pointController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final routerProvider = Provider.of<RouterRepository>(context);
    final userProvider = Provider.of<UserRepository>(context);
    ColorsApp colorsApp = ColorsApp();

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [colorsApp.fonAppRigtColor, colorsApp.fonAppLeftColor],
        ),
      ),

      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    colorsApp.fonAppRigtColor,
                    colorsApp.fonAppLeftColor,
                  ],
                ),
              ),

              child: StaticTextApp(name: _name[0]),
            ),
            SizedBox(width: 12),
            Expanded(child: StaticTextApp(name: _name)),
            Expanded(
              child: TextButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text('Внимание'),
                      content: TextField(
                        controller: _pointController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hint: Text('Изменить'),
                        ),
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            final parsToIntPointController = int.tryParse(
                              _pointController.text,
                            );
                            int result = _point + parsToIntPointController!;
                            userProvider.updatePointById(_id, result);
                            routerProvider.navigateBack(context);
                          },
                          child: Text('Изменить'),
                        ),
                      ],
                    ),
                  );
                },
                child: _point > 101 ? Text('Проиграл') : Text('Очков $_point'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

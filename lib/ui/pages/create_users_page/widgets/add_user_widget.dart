import 'package:account_entry/generated/l10n.dart';
import 'package:account_entry/repository/user_repository.dart';
import 'package:account_entry/ui/styles/text_stales.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddUserWidget extends StatefulWidget {
  const AddUserWidget({super.key});

  @override
  State<AddUserWidget> createState() => _AddUserWidgetState();
}

class _AddUserWidgetState extends State<AddUserWidget> {
  final _textStyles = AppTextStyle();
  TextEditingController _nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserRepository>(context, listen: false);
    return Row(
      children: [
        Expanded(
          child: TextField(
            controller: _nameController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hint: Text(S.of(context).name_points),
            ),
          ),
        ),

        SizedBox(width: 8),
        TextButton(
          onPressed: () {
            userProvider.createUser(_nameController.text);
            _nameController.text = '';
          },
          child: Text(S.of(context).add, style: _textStyles.buttonTextStyle),
        ),
      ],
    );
  }
}

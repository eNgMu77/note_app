import 'package:flutter/material.dart';

import 'package:note_app/views/widgets/custom_button.dart';
import 'package:note_app/views/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: const [
            SizedBox(height: 30),
            CustomTextField(hint: 'title'),
            SizedBox(height: 20),
            CustomTextField(hint: 'content', maxLine: 5),
            SizedBox(height: 70),
            CustomButton(),
            SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}

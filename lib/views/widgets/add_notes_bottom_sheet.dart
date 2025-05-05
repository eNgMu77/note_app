import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children:const [
            SizedBox(height: 30),
            CustomTextField(hint: 'title'),
            SizedBox(height: 20),
            CustomTextField(hint: 'content',maxLine: 5,),
          ],
        ),
      ),
    );
  }
}

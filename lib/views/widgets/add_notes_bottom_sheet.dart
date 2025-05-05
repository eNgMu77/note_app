import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(child: Column(children: [
      SizedBox(height: 30,),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: CustomTextField(),
      )]));
  }
}

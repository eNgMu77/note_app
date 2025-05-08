import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_button.dart';
import 'package:note_app/views/widgets/custom_text_field.dart';

class AddNoteFormState extends StatefulWidget {
  const AddNoteFormState({super.key});

  @override
  State<AddNoteFormState> createState() => _AddNoteFormStateState();
}

final GlobalKey<FormState> formKey = GlobalKey();

AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

String? title, subTitle;

class _AddNoteFormStateState extends State<AddNoteFormState> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(height: 30),
          CustomTextField(
            onSaved: (value) {
              title = value;
            },
            hint: 'title',
          ),
          const SizedBox(height: 20),
          CustomTextField(
            onSaved: (value) {
              subTitle = value;
            },
            hint: 'content',
            maxLine: 5,
          ),
          const SizedBox(height: 70),
          CustomButton(
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
          SizedBox(height: 25),
        ],
      ),
    );
  }
}

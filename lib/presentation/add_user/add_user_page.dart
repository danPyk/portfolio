import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:portfolio/presentation/add_user/add_user_vm.dart';
import 'package:stacked/stacked.dart';

import '../../app/injection_config.dart';

class AddUserPage extends StatelessWidget {
  const AddUserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AddUserVM>.reactive(
      viewModelBuilder: () => AddUserVM(userRepo: locator()),
      onModelReady: (viewModel) => null,
      builder: (context, viewModel, child) => Scaffold(
        body: ListView(children: [
          Column(
            children: [
              FormBuilder(
                key: viewModel.formKey,
                autovalidateMode: AutovalidateMode.always,
                child: Column(
                  children: <Widget>[
                    FormBuilderTextField (
                      name: 'First name',
                       onChanged: (String? text) {
                        viewModel.user.firstName = text!;
                       },
                      decoration: InputDecoration(
                        labelText: 'First name',
                      ),
                       enabled: true,
                    ),
                    FormBuilderTextField (
                      name: 'Last name',
                      // onChanged: _onChanged,
                      decoration: InputDecoration(
                        labelText: 'Last name',
                      ),
                      enabled: true,
                    ),
                    FormBuilderTextField (
                      name: 'Name showed',
                      // onChanged: _onChanged,
                      decoration: InputDecoration(
                        labelText: 'Name showed ( (add user first name+last as showed))',
                      ),
                      enabled: true,
                    ),
                    FormBuilderTextField (
                      name: 'Email',
                      // onChanged: _onChanged,
                      decoration: InputDecoration(
                        labelText: 'Email',
                      ),
                      enabled: true,
                    ),
                    FormBuilderTextField (
                      name: 'Bio',
                      // onChanged: _onChanged,
                      decoration: InputDecoration(
                        labelText: 'Bio',
                      ),
                      enabled: true,
                    ),
                    FormBuilderTextField (
                      name: 'Company name',
                      // onChanged: _onChanged,
                      decoration: InputDecoration(
                        labelText: 'Company name',
                      ),
                      enabled: true,
                    ),
                    FormBuilderTextField (
                      name: 'Website',
                      // onChanged: _onChanged,
                      decoration: InputDecoration(
                        labelText: 'Website',
                      ),
                      enabled: true,
                    )

                  ],
                ),
              ),
              Row(children: <Widget>[
                Expanded(
                  child: MaterialButton(
                    color: Theme.of(context).colorScheme.secondary,
                    child: Text(
                      "Submit",
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () async {
                      await viewModel.updateUser();

                      // viewModel.formKey.currentState.save();
                      // if (viewModel.formKey.currentState.validate()) {
                      //   print(viewModel.formKey.currentState.value);
                      // } else {
                      //
                      //   print("validation failed");
                      // }
                    },
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: MaterialButton(
                    color: Theme.of(context).colorScheme.secondary,
                    child: Text(
                      "Reset",
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      viewModel.formKey.currentState.reset();
                    },
                  ),
                ),
              ]),
            ],
          ),
        ]),
      ),
    );
  }
}

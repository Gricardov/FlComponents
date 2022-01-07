import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Inputs form'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              children: [
                TextFormField(
                  autofocus: true,
                  initialValue: 'Temple Luna',
                  textCapitalization: TextCapitalization.words,
                  onChanged: (value) {
                    print(value);
                  },
                  validator: (value) {
                    if (value == null) return 'Este campo es requerido';
                    return value.length < 3 ? 'Mínimo 3 letras' : null;
                  },
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: const InputDecoration(
                      hintText: 'Nombre del usuario',
                      labelText: 'Nombre',
                      helperText: 'Solo letras',
                      counterText: '3 caracteres',
                      prefixIcon: Icon(Icons.verified_user_outlined),
                      suffixIcon: Icon(Icons.group_outlined),
                      icon: Icon(Icons.assignment_ind_outlined),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              topRight: Radius.circular(10)))),
                ),
                TextFormField(),
                TextFormField(),
                TextFormField(),
                TextFormField(),
                TextFormField(),
                TextFormField(),
                TextFormField(),
                TextFormField(),
                TextFormField(),
                TextFormField()
              ],
            ),
          ),
        ));
  }
}

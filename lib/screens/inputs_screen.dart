import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Usamos los keys de cada widget
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'Mila',
      'last_name': 'Luna',
      'email': 'sorgalim@gmail.com',
      'password': '123456',
      'role': "admin"
    };

    return Scaffold(
        appBar: AppBar(
          title: const Text('Inputs form'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Form(
              key: myFormKey,
              child: Column(
                children: [
                  CustomInputField(
                    labelText: 'Nombre',
                    hintText: 'Nombre del usuario',
                    formProperty: 'first_name',
                    formValues: formValues,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomInputField(
                    labelText: 'Apellido',
                    hintText: 'Apellido del usuario',
                    formProperty: 'last_name',
                    formValues: formValues,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomInputField(
                    labelText: 'Correo',
                    hintText: 'Correo del usuario',
                    keyboardType: TextInputType.emailAddress,
                    formProperty: 'email',
                    formValues: formValues,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomInputField(
                    labelText: 'Contraseña',
                    hintText: 'Contraseña del usuario',
                    isPassword: true,
                    keyboardType: TextInputType.emailAddress,
                    formProperty: 'password',
                    formValues: formValues,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  DropdownButtonFormField<String>(
                      items: const [
                        DropdownMenuItem(
                          value: 'admin',
                          child: Text('Admin'),
                        ),
                        DropdownMenuItem(
                          value: 'superuser',
                          child: Text('SuperUser'),
                        ),
                        DropdownMenuItem(
                          value: 'developer',
                          child: Text('Developer'),
                        )
                      ],
                      onChanged: (String? value) =>
                          formValues['role'] = value ?? 'Admin'),
                  ElevatedButton(
                      onPressed: () {
                        // Desactivo el teclado
                        FocusScope.of(context).requestFocus(FocusNode());
                        // Valido el formulario
                        if (!myFormKey.currentState!.validate()) {
                          print('Formulario no válido');
                          return;
                        }
                        print(formValues);
                      },
                      child: const SizedBox(
                        width: double.infinity,
                        child: Center(child: Text('Guardar')),
                      ))
                ],
              ),
            ),
          ),
        ));
  }
}

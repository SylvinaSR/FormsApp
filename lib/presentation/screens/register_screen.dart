import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Nuevo usuario')),
      body: _RegisterView(),
    );
  }
}

class _RegisterView extends StatelessWidget {
  const _RegisterView();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsetsGeometry.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const FlutterLogo(size: 100),
              TextFormField(),
              TextFormField(),
              TextFormField(),
              TextFormField(),
              const SizedBox(height: 20,),
              FilledButton.tonalIcon(
                onPressed: () {},
                label: Text('Crear usuario'),
                icon: Icon(Icons.save),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

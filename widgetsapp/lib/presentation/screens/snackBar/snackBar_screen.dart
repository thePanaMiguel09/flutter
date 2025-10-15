import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackBarScreen extends StatelessWidget {
  static const String name = 'snackbar_screen';

  const SnackBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    void showCustomSnackBar(BuildContext context) {
      ScaffoldMessenger.of(context).clearSnackBars();

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          action: SnackBarAction(label: 'Ok!', onPressed: () {}),
          content: const Text('Hola'),
          duration: Duration(seconds: 2),
        ),
      );
    }

    void openDialog(BuildContext context) {
      showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) => AlertDialog(
          title: Text('¿Estas Seguro?'),
          content: Text('Este es un dialog personalizado'),
          actions: [
            TextButton.icon(
              onPressed: () => context.pop(),
              label: Text('Cerrar'),
            ),
            FilledButton(
              onPressed: () => context.pop(),
              child: Text('Aceptar'),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(title: Text('Snackbars')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
              onPressed: () {
                showAboutDialog(
                  children: [Text('Hola desde un Dialog')],
                  context: context,
                );
              },
              child: Text('Licencias Usadas'),
            ),
            FilledButton.tonal(
              onPressed: () => openDialog(context),
              child: Text('Dialog'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => showCustomSnackBar(context),
        icon: const Icon(Icons.remove_red_eye),
        label: const Text('Mostrar Snackbar'),
      ),
    );
  }
}

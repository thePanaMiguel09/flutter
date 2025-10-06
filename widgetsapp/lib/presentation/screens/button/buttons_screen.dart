import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  static const String name = 'button_screen';

  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Botones')),
      body: ButtonsView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.pop();
        },
        child: Icon(Icons.arrow_back_ios_sharp),
      ),
    );
  }
}

class ButtonsView extends StatelessWidget {
  const ButtonsView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: SizedBox(
          child: Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            alignment: WrapAlignment.center,
            spacing: 5,
            children: [
              ElevatedButton(onPressed: () {}, child: const Text('Eleveted')),
              const ElevatedButton(
                onPressed: null,
                child: Text('Eleveted Disabled'),
              ),
              ElevatedButton.icon(
                icon: const Icon(Icons.access_alarms_outlined),
                onPressed: () {},
                label: const Text('Eleveted Icon'),
              ),
              FilledButton(onPressed: () {}, child: const Text('Filled')),
              FilledButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.zoom_out_map_outlined),
                label: const Text('Filled'),
              ),
              OutlinedButton(onPressed: () {}, child: const Text('Outlined')),
              OutlinedButton.icon(
                onPressed: () {},
                label: const Text('Outlined Icon'),
                icon: const Icon(Icons.account_box_sharp),
              ),
              TextButton(onPressed: () {}, child: Text('Text Button')),
              TextButton.icon(
                onPressed: () {},
                label: Text('Text Icon'),
                icon: const Icon(Icons.text_fields_outlined),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.install_desktop_outlined),
              ),
              CustomButton(),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: colors.primary,
        child: InkWell(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Text('Hola Mundo', style: TextStyle(color: Colors.white)),
          ),
        ),
      ),
    );
  }
}

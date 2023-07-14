import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/config/theme/menu/menu_items.dart';
import 'package:widgets_app/presentation/screen/cards/cards_screen.dart';

class HomeScreen extends StatelessWidget {
  static const String name = 'home_screen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home Screen'),
        ),
        body: const _HomeView());
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: appMenuItem.length,
        itemBuilder: (BuildContext context, int index) {
          final menuItem = appMenuItem[index];
          return _CustomListTitle(menuItem: menuItem);
        });
  }
}

class _CustomListTitle extends StatelessWidget {
  const _CustomListTitle({
    required this.menuItem,
  });

  final MenuItem menuItem;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return ListTile(
      leading: Icon(menuItem.icon, color: colors.primary),
      title: Text(menuItem.title),
      subtitle: Text(menuItem.subTitle),
      trailing: const Icon(Icons.chevron_right, color: Colors.grey),
      onTap: () {
        // context.pushNamed(CardsScreen.name);

        context.push(menuItem.link);

        // Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) => const ButtonsScreen()),
        // );
        // Navigator.pushNamed(context, menuItem.link);
      },
    );
  }
}

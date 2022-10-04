import 'package:flutter/material.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({super.key});

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          const UserAccountsDrawerHeader(
              accountName: Text('Farischa'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/profile-1.jpg'),
              ),
              accountEmail: Text('farischa@gmail.com')),
          DrawerListTile(
            iconData: Icons.group,
            title: 'New Group',
            onTilePressed: () {},
          ),
          DrawerListTile(
            iconData: Icons.key,
            title: 'New Secret Chat',
            onTilePressed: () {},
          ),
          DrawerListTile(
            iconData: Icons.broadcast_on_home,
            title: 'New Channel',
            onTilePressed: () {},
          ),
          DrawerListTile(
            iconData: Icons.person_outline,
            title: 'Contacts',
            onTilePressed: () {},
          ),
          DrawerListTile(
            iconData: Icons.person_add,
            title: 'Invite friends',
            onTilePressed: () {},
          ),
          DrawerListTile(
            iconData: Icons.settings,
            title: 'Settings',
            onTilePressed: () {},
          ),
          DrawerListTile(
            iconData: Icons.help_outline,
            title: 'Telegram FAQ',
            onTilePressed: () {},
          ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  final IconData iconData;
  final String title;
  final VoidCallback onTilePressed;

  const DrawerListTile(
      {Key? key,
      required this.iconData,
      required this.title,
      required this.onTilePressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTilePressed,
      dense: true,
      leading: Icon(iconData),
      title: Text(
        title,
        style: TextStyle(fontSize: 16),
      ),
    );
  }
}

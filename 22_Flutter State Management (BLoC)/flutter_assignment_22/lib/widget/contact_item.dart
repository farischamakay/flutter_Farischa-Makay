import 'package:flutter/material.dart';
import 'package:flutter_assignment_22/viewmodelcontact/contact_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ContactItem extends StatefulWidget {
  const ContactItem({super.key});

  @override
  State<ContactItem> createState() => _ContactItemState();
}

class _ContactItemState extends State<ContactItem> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ContactBloc, ContactState>(
      builder: (context, state) {
        if (state is Loading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is Failed) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Gagal memroses data contact'),
                ElevatedButton(
                  onPressed: () {
                    context.read<ContactBloc>().add(Reload());
                  },
                  child: const Text('Reload Contact'),
                ),
              ],
            ),
          );
        }
        if (state.contacts.isNotEmpty) {
          return ListView.separated(
              itemBuilder: ((context, index) {
                final contact = state.contacts[index];
                return ListTile(
                  leading: CircleAvatar(
                    child: Text(contact.name[0]),
                  ),
                  title: Text(contact.name),
                  subtitle: Text(contact.number),
                  trailing: const Icon(
                    Icons.delete,
                    size: 30,
                  ),
                );
              }),
              separatorBuilder: (context, index) => Divider(),
              itemCount: state.contacts.length);
        } else {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.group,
                  size: 30,
                ),
                Text('Tidak ada contact')
              ],
            ),
          );
        }
      },
    );
  }
}

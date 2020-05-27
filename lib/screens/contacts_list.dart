import 'package:flutter/material.dart';
import 'package:persistenciaflutter/model/contact.dart';
import 'package:persistenciaflutter/screens/contact_form.dart';

class ContactsList extends StatefulWidget {
  final List<Contact> _contactList = List();
  @override
  _ContactsListState createState() => _ContactsListState();
}

class _ContactsListState extends State<ContactsList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contacts'),
      ),
      body: ListView(
        children: <Widget>[
          Card(
            child: ListTile(
              title: Text(
                'André',
                style: TextStyle(fontSize: 24.0),
              ),
              subtitle: Text(
                '1000',
                style: TextStyle(fontSize: 16.0),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => ContactForm()))
              .then((contact) {
            debugPrint(contact.toString());
            if (contact != null) {
              widget._contactList.add(contact);
            }
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

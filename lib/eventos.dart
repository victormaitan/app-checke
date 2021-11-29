import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

Future _asyncInputDialog(BuildContext context) async {
  String sampleText = '';
  return showDialog(
    context: context,
    barrierDismissible:
        false, // dialog is dismissible with a tap on the barrier
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Editar Evento'),
        content: Row(
          children: <Widget>[
            Expanded(
                child: TextField(
              autofocus: true,
              decoration: const InputDecoration(
                  labelText: 'Text Here', hintText: 'eg. ABCD'),
              onChanged: (value) {
                sampleText = value;
              },
            ))
          ],
        ),
        actions: <Widget>[
          TextButton(
            child: const Text('Salvar'),
            onPressed: () {
              Navigator.of(context).pop(sampleText);
            },
          ),
        ],
      );
    },
  );
}

class Eventos extends StatefulWidget {
  final List<String> items;

  const Eventos({Key? key, required this.items}) : super(key: key);

  @override
  _EventosState createState() => _EventosState();
}

class _EventosState extends State<Eventos> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.items.length,
      itemBuilder: (context, index) {
        return Card(
          margin: const EdgeInsets.all(10),
          color: Colors.orange.shade100,
          child: ListTile(
            title: Text(widget.items[index]),
            trailing: Wrap(
              children: [
                IconButton(
                  icon: const Icon(Icons.edit),
                  color: Colors.orange,
                  onPressed: () async {
                    final String newText = await _asyncInputDialog(context);
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text(newText),
                    ));
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.delete),
                  color: Colors.deepOrange,
                  onPressed: () async {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text('Evento excluído!'),
                    ));
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/grocery_provider.dart';
import '../models/grocery_item.dart';

class GroceryListScreen extends StatelessWidget {
  GroceryListScreen({super.key});

  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final groceryProvider = Provider.of<GroceryProvider>(context);

    return Scaffold(
      appBar: AppBar(title: const Text('Grocery List')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: const InputDecoration(
                      hintText: 'Add grocery item',
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: () {
                    groceryProvider.addItem(_controller.text);
                    _controller.clear();
                  },
                )
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: groceryProvider.items.length,
              itemBuilder: (_, index) {
                final item = groceryProvider.items[index];
                return ListTile(
                  title: Text(item.name),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete, color: Colors.red),
                    onPressed: () => groceryProvider.removeItem(item),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

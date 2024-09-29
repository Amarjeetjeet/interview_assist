import 'package:flutter/material.dart';

class MyCatalogueCard extends StatelessWidget {
  const MyCatalogueCard({
    super.key,
    required this.items,
    required this.icons,
    required this.onTap,
  });

  final void Function(int) onTap;
  final List<String> items, icons;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // number of items in each row
        mainAxisSpacing: 8.0, // spacing between rows
        crossAxisSpacing: 8.0, // spacing between columns
      ),
      padding: const EdgeInsets.all(8.0), // padding around the grid
      itemCount: items.length, // total number of items
      itemBuilder: (context, index) {
        return Card(
          clipBehavior: Clip.hardEdge,
          color: Theme.of(context).primaryColor, // color of grid items
          child: InkWell(
            onTap: () {
              onTap(index);
            },
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    icons[index],
                    width: 56,
                    color: Colors.white,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    items[index],
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

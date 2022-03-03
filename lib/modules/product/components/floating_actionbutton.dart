import 'package:flutter/material.dart';

import '../../../shared/Widget/constants.dart';

// ignore: non_constant_identifier_names
Widget floating_ActionButton() {
  return Padding(
    padding: const EdgeInsets.only(left: 20),
    child: Row(
      children: [
        FloatingActionButton.extended(
          heroTag: null,
          onPressed: () {
            // Add your onPressed code here!
          },
          label: const Padding(
            padding: EdgeInsets.only(left: 50, right: 50),
            child: Text('Add to bag'),
          ),
          backgroundColor: colorpreblue,
        ),
        const Spacer(),
        FloatingActionButton.extended(
          heroTag: null,
          onPressed: () {},
          label: Text(
            "Cart",
            style: TextStyle(color: colorb),
          ),
          backgroundColor: colorw,
          icon: const Icon(
            Icons.shopping_bag_outlined,
            color: Color.fromARGB(255, 207, 176, 0),
          ),
        ),
      ],
    ),
  );
}

import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return  Scaffold(
      appBar: AppBar(
        title: Text(
          'product',
          style: theme.textTheme.labelLarge,
          ),

        ),
    );
  }
}
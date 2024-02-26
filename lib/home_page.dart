import 'package:flutter/material.dart';
import 'package:creeply_shop/product_list.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    double paddingAll = 10;
    return Scaffold(
      bottomNavigationBar: NavigationBar(
          destinations: const <Widget>[
            NavigationDestination(
              icon: Icon(Icons.shop),
              label: 'Product'
              ),
            NavigationDestination(
              icon: Icon(Icons.person),
              label: 'Account',
              )
          ],
        ),
      appBar: AppBar(
        title: Text(
          'Creeply Shop',
          style: theme.textTheme.labelLarge,
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/auth');
              },
              icon: const Icon(Icons.person))
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Text(
                'BOOOOO!!!!',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                ),
              ),
            )
          ],
        ),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(100, (index) {
          return Expanded(child: Center(
              child: Container(
                  padding:  EdgeInsets.all(paddingAll),
                  margin:  EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(width: 1),
                  ),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget> [
                        Expanded(child: Container(child: Image.network(productList[0].getPath()),)),
                        Expanded(child: Container(child: Text('Card $index'),))
                        
                        ],
                    ),
                  ))));
        }),
      ),
    );
  }
}

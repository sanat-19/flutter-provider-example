import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/provider_class.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    print("Build");

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: Provider.of<ProviderClass>(context, listen: false)
                  .incrementCount,
              child: const Icon(Icons.add),
            ),
            const Text(
              'You have pushed the button this many times:',
            ),
            Consumer<ProviderClass>(builder: ((context, value, child) {
              return Text(
                '${value.count}',
                style: Theme.of(context).textTheme.headline4,
              );
            })),
            ElevatedButton(
              onPressed: Provider.of<ProviderClass>(context, listen: false)
                  .decrementCount,
              child: const Icon(Icons.remove),
            ),
          ],
        ),
      ),
    );
  }
}

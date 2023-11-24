import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_theme/styles.dart';
import 'package:flutter_theme/theme_prpvider.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final colorList = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.amber,
    Colors.purple,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text(
          'Flutter Theme',
          style: Styles.textTheme(context)
              .displayMedium!
              .copyWith(color: Theme.of(context).indicatorColor),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Text(
                'Title',
                style: Styles.textTheme(context)
                    .bodyLarge!
                    .copyWith(color: Theme.of(context).indicatorColor),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Text FormField',
                    hintStyle: TextStyle(color: Theme.of(context).hintColor),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Theme.of(context).focusColor),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Theme.of(context).errorColor),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    prefixIcon: const Icon(Icons.search),
                    suffixIcon: const Icon(Icons.clear),
                  ),
                ),
              ),
               Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec euismod, nisl eget aliquam ultricies, nunc nisl ultrices nunc, quis aliquam nisl nisl vitae nisl. Donec euismod, nisl eget aliquam ultricies, nunc nisl ultrices nunc, quis aliquam nisl nisl vitae nisl.',
                  style: Styles.textTheme(context).bodyMedium!.copyWith(color: Theme.of(context).indicatorColor)),
                
              ),
              SizedBox(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: colorList.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        print('You tapped on: ${colorList[index]}');
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              color: colorList[index],
                              shape: BoxShape.circle,
                              border:
                                  Border.all(color: Colors.black, width: 2)),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Center(
                child: Consumer(builder: (context, ref, child) {
                  final themeNotifier = ref.watch(themeProvider);
                  return ElevatedButton(
                    onPressed: () {
                      themeNotifier.setTheme();
                    },
                    child: const Text('Toggle Theme'),
                  );
                }),
              )
            ],
          ),
        ),
      ),
    );
  }
}

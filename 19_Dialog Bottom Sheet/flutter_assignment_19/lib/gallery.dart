import 'package:flutter/material.dart';
import 'bottom_sheet.dart';
import 'models/data.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const SizedBox(height: 45),
            const Text(
              'Gallery',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 25),
            Expanded(
                child: Container(
              padding: const EdgeInsets.all(10.0),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10),
                itemBuilder: (context, index) {
                  return RawMaterialButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                                content: const Text(
                                    'Do you want to see the detail?'),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text('No'),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                      showModalBottomSheet(
                                          shape: const RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.vertical(
                                                      top:
                                                          Radius.circular(20))),
                                          context: context,
                                          builder: (context) => ImageDetails(
                                              img: items[index].imgPath,
                                              dt: items[index].date,
                                              tm: items[index].time));
                                    },
                                    child: const Text('Yes'),
                                  ),
                                ],
                              ));
                    },
                    onLongPress: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage(items[index].imgPath),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  );
                },
                itemCount: items.length,
              ),
            ))
          ],
        ),
      ),
    );
  }
}

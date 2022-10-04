import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widget_task/drawer.dart';
import 'package:flutter_platform_widget_task/models/data.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int groupValue = 0;
  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoPageScaffold(
            navigationBar: CupertinoNavigationBar(
              leading: CupertinoButton(
                  padding: EdgeInsets.zero,
                  child: const Text(
                    'Edit',
                  ),
                  onPressed: () {}),
              middle: const Text(
                'Chats',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              trailing: CupertinoButton(
                  padding: EdgeInsets.zero,
                  child: const Icon(CupertinoIcons.square_pencil),
                  onPressed: () {}),
              backgroundColor: const Color(0xffE8EAEB),
            ),
            backgroundColor: const Color(0xffE8EAEB),
            child: CupertinoTabScaffold(
                tabBar: CupertinoTabBar(
                  items: const [
                    BottomNavigationBarItem(
                        label: 'Chats',
                        icon: Icon(CupertinoIcons.chat_bubble_2_fill)),
                    BottomNavigationBarItem(
                        label: 'Call', icon: Icon(CupertinoIcons.phone)),
                    BottomNavigationBarItem(
                        label: 'Contacts',
                        icon: Icon(CupertinoIcons.person_circle)),
                    BottomNavigationBarItem(
                        label: 'Settings', icon: Icon(CupertinoIcons.settings))
                  ],
                ),
                tabBuilder: (context, index) {
                  return CupertinoTabView(builder: (context) {
                    return ListView(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(1),
                          child: CupertinoSearchTextField(
                            placeholder: 'Search',
                          ),
                        ),
                        CupertinoSegmentedControl<int>(
                          padding: EdgeInsets.all(0),
                          borderColor: Color(0xffE8EAEB),
                          unselectedColor: Color(0xffE8EAEB),
                          pressedColor: Colors.blue.withOpacity(0.2),
                          groupValue: groupValue,
                          children: {
                            0: buildSegment(
                              'All Chats',
                            ),
                            1: buildSegment('Work'),
                            2: buildSegment('Unread'),
                            3: buildSegment('Personal'),
                          },
                          onValueChanged: (groupValue) {
                            print(groupValue);

                            setState(() {
                              this.groupValue = groupValue;
                            });
                          },
                        ),
                      ],
                    );
                  });
                }))
        : Scaffold(
            appBar: AppBar(
              elevation: 0.0,
              backgroundColor: const Color(0xff55879F),
              // leading: const Icon(Icons.menu),
              title: const Text(
                'Telegram',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              actions: const [
                Padding(
                    padding: EdgeInsets.only(right: 15),
                    child: Icon(Icons.search)),
              ],
            ),
            drawer: const DrawerScreen(),

            body: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: ListView.separated(
                  itemBuilder: (context, indext) {
                    return ListTile(
                        leading: CircleAvatar(
                          radius: 28,
                          backgroundImage: AssetImage(items[indext].imgPath),
                        ),
                        title: items[indext].status
                            ? Text(
                                items[indext].name,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold),
                              )
                            : Row(
                                children: [
                                  Text(
                                    items[indext].name,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                        subtitle: Text(
                          items[indext].message,
                          style: const TextStyle(color: Colors.grey),
                        ),
                        trailing: items[indext].messNum != null
                            ? Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(items[indext].time),
                                  const SizedBox(
                                    height: 7,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: items[indext].status
                                            ? Colors.green
                                            : Colors.grey[400],
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        '${items[indext].messNum}',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  )
                                ],
                              )
                            : Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(items[indext].time),
                                  const SizedBox(
                                    height: 7,
                                  ),
                                ],
                              ));
                  },
                  separatorBuilder: (context, index) {
                    return const Divider();
                  },
                  itemCount: items.length),
            ),

            floatingActionButton: FloatingActionButton(
                child: Icon(
                  Icons.create,
                  color: Colors.white,
                ),
                backgroundColor: const Color(0xFF65a9e0),
                onPressed: () {}),

            // body: ListTile,
          );
  }

  Widget buildSegment(String s) => Container(
        child: Text(
          s,
          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
      );
}

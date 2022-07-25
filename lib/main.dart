import 'package:ch_six/tabBar/status.dart';
import 'package:ch_six/tabBar/call.dart';
import 'package:ch_six/tabBar/chats.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.teal),
        home: DefaultTabController(
          initialIndex: 1,
          length: 4,
          child: Scaffold(
              appBar: AppBar(
                  centerTitle: false,
                  title: const Text('WhatApp'),
                  actions: [
                    const Icon(Icons.search),
                    const SizedBox(
                      width: 10,
                    ),
                    PopupMenuButton(
                        itemBuilder: ((context) => [
                              const PopupMenuItem(
                                value: 1,
                                child: Text('new Group'),
                              ),
                              const PopupMenuItem(
                                value: 2,
                                child: Text('Sitting'),
                              ),
                              const PopupMenuItem(
                                value: 3,
                                child: Text('Logout'),
                              )
                            ]),
                        child: const Icon(Icons.more_horiz))
                  ],
                  bottom: const TabBar(
                    tabs: [
                      Tab(child: Icon(Icons.camera_alt)),
                      Tab(child: Text('chats')),
                      Tab(child: Text('Status')),
                      Tab(child: Text('Call'))
                    ],
                  )),
              body: const TabBarView(
                children: [
                 Text('Camera'),
                 Chats(),
                 Status(),
                Call()
              ])),
        ));
  }
}

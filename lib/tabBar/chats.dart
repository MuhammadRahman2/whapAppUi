import 'package:flutter/material.dart';

class Chats extends StatelessWidget {
  const Chats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 50,
      itemBuilder: (contex, index) => const ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(
              'https://th.bing.com/th/id/OIP.PJCSD1Y95gFn06Ugzk_-OAAAAA?pid=ImgDet&rs=1'),
        ),
        title: Text('Name'),
        subtitle: Text('how are you'),
        trailing: Text('7:50 pm'),
      ),
    );
  }
}

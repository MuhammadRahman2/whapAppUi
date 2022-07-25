import 'package:flutter/material.dart';

class Call extends StatelessWidget {
  const Call({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 50,
      itemBuilder: (contex, index) => ListTile(
        leading: const CircleAvatar(
          backgroundImage: NetworkImage(
              'https://th.bing.com/th/id/OIP.PJCSD1Y95gFn06Ugzk_-OAAAAA?pid=ImgDet&rs=1'),
        ),
        title: const Text('Name'),
        subtitle: Text(
          index / 2 == 0 ? ' missed call' : 'video call',
          style: const TextStyle(color: Colors.red),
        ),
        trailing: Icon(index / 2 == 0 ? Icons.phone : Icons.video_call),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Status extends StatelessWidget {
  const Status({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 50,
      itemBuilder: (contex, index) => ListTile(
        leading: Container(
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.green, width: 4)),
          child: const CircleAvatar(
            backgroundImage: NetworkImage(
                'https://th.bing.com/th/id/OIP.PJCSD1Y95gFn06Ugzk_-OAAAAA?pid=ImgDet&rs=1'),
          ),
        ),
        title: const Text('Name'),
        subtitle: const Text(
          'today 3:55 pm',
        ),
      ),
    );
  }
}

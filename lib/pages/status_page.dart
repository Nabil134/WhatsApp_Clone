import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/status_model.dart';

class StatusPage extends StatefulWidget {
  const StatusPage({Key? key}) : super(key: key);

  @override
  State<StatusPage> createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.blueGrey,
          backgroundImage: AssetImage('images/noimage.jpg'),
        ),
        title: Text(
          'My Status',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          'Tab to add status update',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 15,
          ),
        ),
      ),
      Divider(),
      Text(
        'Recent Updates',
        style: TextStyle(
          color: Colors.black54,
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
      ),
      Flexible(
        child: ListView.builder(
          itemCount: statusData.length,
          itemBuilder: (context, i) => Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.blueGrey,
                  backgroundImage:
                      AssetImage(statusData[i].avatar ?? 'images/noimage.jpg'),
                ),
                title: Text(
                  statusData[i].name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  statusData[i].time,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                  ),
                ),
                onTap: () {
                  print('Status Page');
                },
              ),
              Divider(height: 10),
            ],
          ),
        ),
      ),
    ]);
  }
}

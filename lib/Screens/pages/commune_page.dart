import 'package:flutter/material.dart';
import 'package:her_sphere/Screens/pages/homepage.dart';
import 'package:her_sphere/Screens/pages/profile_page.dart';

class CommunePage extends StatefulWidget {
  const CommunePage({super.key});

  @override
  State<CommunePage> createState() => _CommunePageState();
}

class _CommunePageState extends State<CommunePage> {
  final TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 197, 72, 141),
        body: Column(children: [
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  height: 35,
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Icon(Icons.search),
                          SizedBox(
                            width: 5,
                          ),
                          Text('Search'),
                        ],
                      ),
                      Icon(Icons.calendar_view_day),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  child: Row(
                    children: <Widget>[
                      Text(
                        'Primary',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Text(
                        'General',
                        style: TextStyle(fontSize: 20, color: Colors.black54),
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: Colors.black38,
                ),
                InkWell(
                  child: ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage()));
                    },
                    title: Text(
                      'Username',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    subtitle: Text('Active 13m ago'),
                    leading: CircleAvatar(
                      backgroundColor: Colors.indigo,
                      radius: 30,
                    ),
                    trailing: Icon(
                      Icons.camera_alt,
                      size: 35,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  title: Text(
                    'Username',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  subtitle: Text('Active 13m ago'),
                  leading: CircleAvatar(
                    backgroundColor: Colors.indigo,
                    radius: 30,
                  ),
                  trailing: Icon(
                    Icons.camera_alt,
                    size: 35,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  title: Text(
                    'Username',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  subtitle: Text('Active 13m ago'),
                  leading: CircleAvatar(
                    backgroundColor: Colors.indigo,
                    radius: 30,
                  ),
                  trailing: Icon(
                    Icons.camera_alt,
                    size: 35,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  title: Text(
                    'Username',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  subtitle: Text('Active 13m ago'),
                  leading: CircleAvatar(
                    backgroundColor: Colors.indigo,
                    radius: 30,
                  ),
                  trailing: Icon(
                    Icons.camera_alt,
                    size: 35,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  title: Text(
                    'Username',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  subtitle: Text('Active 13m ago'),
                  leading: CircleAvatar(
                    backgroundColor: Colors.indigo,
                    radius: 30,
                  ),
                  trailing: Icon(
                    Icons.camera_alt,
                    size: 35,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  title: Text(
                    'Username',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  subtitle: Text('Active 13m ago'),
                  leading: CircleAvatar(
                    backgroundColor: Colors.indigo,
                    radius: 30,
                  ),
                  trailing: Icon(
                    Icons.camera_alt,
                    size: 35,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ]));
  }
}

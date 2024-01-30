import 'package:flutter/material.dart';

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: false,
            backgroundColor: Colors.teal,
            title: const Text(
              'Whatsup',
              style: TextStyle(color: Colors.white),
            ),
            bottom: const TabBar(tabs: [
              Tab(child: Icon(Icons.camera_alt)),
              Tab(child: Text('Chats')),
              Tab(child: Text('Status')),
              Tab(child: Text('Calls')),
            ]),
            actions: [
              Icon(Icons.search),
              const SizedBox(
                width: 15,
              ),
              PopupMenuButton(
                  icon: const Icon(Icons.more_vert_outlined),
                  itemBuilder: (context) => [
                        const PopupMenuItem(value: 1, child: Text('New Grup')),
                        const PopupMenuItem(value: 2, child: Text('Settings')),
                        const PopupMenuItem(value: 3, child: Text('Log out')),
                      ]),
              const SizedBox(
                width: 15,
              )
            ],
          ),
          body: TabBarView(children: [
            Text('1'),
            ListView.builder(
                itemCount: 4,
                itemBuilder: (context, index) {
                  return const ListTile(
                    title: Text('john wick'),
                    subtitle: Text('do you saw my dog?'),
                    trailing: Text('12:27 AM'),
                    leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://wallpapers.com/images/hd/cool-hd-john-wick-and-guns-fkurzl5x5t5vakvg.webp')),
                  );
                }),
            ListView.builder(
                itemCount: 1,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('john wick'),
                    subtitle: Text('8827601345'),
                    trailing: Text('12:23 PM'),
                    leading: Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.green, width: 3)),
                      child: const CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://cdn.pixabay.com/photo/2017/09/25/13/12/puppy-2785074_1280.jpg')),
                    ),
                  );
                }),
            ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('john wick'),
                    subtitle: Text(index / 2 == index ? '9:40 PM' : '7:00 Pm'),
                    trailing: Icon(index / 3 == 0
                        ? Icons.call
                        : Icons.missed_video_call_rounded),
                    leading: const CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://wallpapers.com/images/hd/cool-hd-john-wick-and-guns-fkurzl5x5t5vakvg.webp')),
                  );
                }),
          ]),
        ));
  }
}

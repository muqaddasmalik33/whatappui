import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('WhatsApp'),
            bottom: const TabBar(
              tabs: [
                Tab(
                  child: Icon(Icons.camera_alt),
                ),
                Tab(
                  child: Text('Chats'),
                ),
                Tab(
                  child: Text('Status'),
                ),
                Tab(
                  child: Text('Calls'),
                ),
              ],
            ),
            actions: [
              const Icon(Icons.search),
              const SizedBox(
                width: 10,
              ),
              PopupMenuButton(
                  itemBuilder: (context) =>const  [
                        PopupMenuItem(value: '1', child: Text('New group')),
                         PopupMenuItem( value:'2',child: Text('Settings')),
                     PopupMenuItem(value: '3', child: Text('Logout')),
                      ]),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
          body:  TabBarView(
            children: [
              const Text('camera'),
              ListView.builder(
                  itemCount: 15,
                  itemBuilder: (context,index){
                return const ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage('https://images.pexels.com/photos/1031081/pexels-photo-1031081.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
                  ),
                  title: Text('Muqaddas Malik'),
                  subtitle: Text('where are you'),
                  trailing: Text('2:41 pm'),
                );
              }),
              ListView.builder(
                  itemCount: 15,
                  itemBuilder: (context,index){
                    if (index==0 ) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('New updates'),
                            ListTile(
                              leading: Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Colors.green,
                                      width: 3,
                                    )
                                ),
                                child:const  CircleAvatar(
                                  backgroundImage: NetworkImage('https://images.pexels.com/photos/1031081/pexels-photo-1031081.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
                                ),
                              ),
                              title: const Text('Muqaddas malik'),
                              subtitle:const Text('25 minute ago'),

                            ),
                          ],
                        ),
                      );
                    }  else{
                      return ListTile(
                        leading: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.green,
                                width: 3,
                              )
                          ),
                          child:const  CircleAvatar(
                            backgroundImage: NetworkImage('https://images.pexels.com/photos/1031081/pexels-photo-1031081.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
                          ),
                        ),
                        title: const Text('Muqaddas malik'),
                        subtitle:const Text('40 minute ago'),

                      );
                    }


                  }),
              ListView.builder(
                  itemCount: 15,
                  itemBuilder: (context,index){
                    return ListTile(
                      leading: const CircleAvatar(
                        backgroundImage: NetworkImage('https://images.pexels.com/photos/1031081/pexels-photo-1031081.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
                      ),
                      title: const Text('Muqaddas malik'),
                       subtitle:Text(index /2==0?'you missed call': 'call time is 12:23 pm'),
                      trailing: Icon( index/2==0?Icons.phone:Icons.video_call),
                    );
                  }),
            ],
          ),
        ));
  }
}

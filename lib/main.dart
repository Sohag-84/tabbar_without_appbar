import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>  with TickerProviderStateMixin{

  @override
  Widget build(BuildContext context) {

    TabController _tabController = TabController(length: 3, vsync: this);

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(left: 20,top: 40,right: 10),
            child: Row(
              children:  [
                const Icon(Icons.menu,size: 30,color: Colors.black26,),
                Expanded(child: Container()), //its user for menu and decoration are stay in 2 corner
                Container(
                  width: 30,height: 30,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.elliptical(10,6)),
                    color: Colors.grey
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20,),
          Container(
            padding: const EdgeInsets.only(left: 20),
            child: const Text("Discovered",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
          ),
          Container(
            padding: const EdgeInsets.only(left: 20),
            child:  TabBar(
              controller: _tabController,
              labelColor: Colors.deepPurpleAccent,
              unselectedLabelColor: Colors.brown,
              isScrollable: true,
              indicatorColor: Colors.black26,
              tabs: const [
                Tab(text: 'Places',),
                Tab(text: 'Inspiration',),
                Tab(text: 'Emotions',),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 20),
            width: double.maxFinite,
            height: 300,
            child: TabBarView(
              controller: _tabController,
              children: const [
                Text('data'),
                Text('data'),
                Text('data'),
              ],

            ),
          ),

          const SizedBox(height: 20,),
          Container(
            padding: const EdgeInsets.only(left: 20),
            child: const Text("Explore more",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
          )
        ],
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:food_buzz/components/my_current_location.dart';
import 'package:food_buzz/components/my_description_box.dart';
import 'package:food_buzz/components/my_drawer.dart';
import 'package:food_buzz/components/my_sliver_app_bar.dart';
import 'package:food_buzz/components/my_tab_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>with SingleTickerProviderStateMixin {
//Tab bar controller 
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }
  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("Home"),
      //   // ignore: deprecated_member_use
      //   backgroundColor: Theme.of(context).colorScheme.background ,
      // ),
      drawer: const MyDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [ 
          MySliverAppBar(
          title: MyTabBar(tabController:_tabController ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Divider(
                indent: 25,
                endIndent: 25,
                color: Theme.of(context).colorScheme.secondary,
              ),
           //my current location 
            const MyCurrentLocation(),

            //Description Box
            const MyDescriptionBox(),
          ],
          ),
           ),
        ],
        body: Container(color: Colors.blue),
      ),
    );
  }
}

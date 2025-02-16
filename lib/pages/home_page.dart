import 'package:flutter/material.dart';
import 'package:khabar_khabo/components/my_current_location.dart';
import 'package:khabar_khabo/components/my_description_box.dart';
import 'package:khabar_khabo/components/my_drawer.dart';
import 'package:khabar_khabo/components/my_food_tile.dart';
import 'package:khabar_khabo/components/my_silver_app_bar.dart';
import 'package:khabar_khabo/components/my_tab_bar.dart';
import 'package:khabar_khabo/models/food.dart';
import 'package:khabar_khabo/models/restaurent.dart';
import 'package:khabar_khabo/pages/food_page.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State <HomePage> createState() =>  _HomePageState();
}

class  _HomePageState extends State <HomePage> with SingleTickerProviderStateMixin {

late TabController _tabController;

@override
  void initState(){
    super.initState();
    _tabController = TabController(
      length:FoodCategory.values.length, 
      vsync: this
      );
  }
  @override
  void dispose(){
    _tabController.dispose();
    super.dispose();
  }
  //sorted out and return a list of food of a category
  List<Food> _filterMenuByCategory (FoodCategory catergory, List<Food> fullMenu){
    return fullMenu.where((food) => food.category == catergory).toList();
  }

  //return list of foods
  List<Widget> getFoodInThisCategory(List<Food> fullMenu){
    return FoodCategory.values.map(
      (Category){
        List<Food> categoryMenu = _filterMenuByCategory(Category, fullMenu);
        return ListView.builder(
          itemCount: categoryMenu.length,
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          itemBuilder: (context,index){
            final food = categoryMenu[index];
            return FoodTile(
              food: food, 
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FoodPage(food: food,),
                  )
                ),
            );
          }
        );
      }
    ).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context,innerBoxIsScrolled0) => [
          MySilverAppBar(
          title: MyTabBar(tabController: _tabController),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end ,
            children: [
              Divider(
                indent: 25,
                endIndent: 25,
                color: Theme.of(context).colorScheme.secondary,
              ),
              const MyCurrentLocation(),
              const MyDescriptionBox(),

            ],
          ),
          ),
         ],
         body: Consumer<Restaurent>(
          builder:(context,restaurent,child) => TabBarView(
          controller: _tabController,
          children: getFoodInThisCategory(restaurent.menu),
          ),
         ),
        ),
    );
  }
}
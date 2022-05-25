import 'package:flutter/material.dart';
import 'package:travel_blog/constants/colors.dart';
import 'package:travel_blog/pages/homePage/widgets/mostPopular.dart';
import 'package:travel_blog/pages/homePage/widgets/travelBlog.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      appBar: AppBar(
        backgroundColor: AppColors.mainColor,
        elevation: 0,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.menu,
              size: 35,
              color: AppColors.textColor,
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              "Travel Blog",
              style: TextStyle(
                fontSize: 30,
                color: AppColors.textColor,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: TravelBlog(),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Most Popular",
                  style: TextStyle(
                    color: AppColors.textColor,
                    fontSize: 20,
                  ),
                ),
                Text(
                  "Viw All",
                  style: TextStyle(
                    color: AppColors.textMorColor,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: MostPopular(),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:travel_blog/constants/colors.dart';
import 'package:travel_blog/models/travel.dart';
import 'package:travel_blog/pages/detailPage/detailPage.dart';

class TravelBlog extends StatelessWidget {
  final _travelList = Travel.generateTravel();
  final _pageControl = PageController(viewportFraction: 0.9);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: _pageControl,
      itemCount: _travelList.length,
      itemBuilder: (context, index) {
        var travel = _travelList[index];
        return Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 20, bottom: 30, top: 20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(
                  travel.image,
                  fit: BoxFit.cover,
                  width: MediaQuery.of(context).size.width,
                ),
              ),
            ),
            Positioned(
              bottom: 35,
              left: 15,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Material(
                    color: Colors.transparent,
                    child: Text(
                      travel.location,
                      style: const TextStyle(
                        fontSize: 20,
                        color: AppColors.mainColor,
                      ),
                    ),
                  ),
                  Material(
                    color: Colors.transparent,
                    child: Text(
                      travel.name,
                      style: const TextStyle(
                          fontSize: 30,
                          color: AppColors.mainColor,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              right: 40,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (contextBuilder) {
                    return DetailPage(travel: travel);
                  }));
                },
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: const BoxDecoration(
                    color: AppColors.textMorColor,
                    shape: BoxShape.circle,
                  ),
                  child: const Center(
                      child: Icon(
                    Icons.arrow_forward,
                    color: AppColors.mainColor,
                    size: 35,
                  )),
                ),
              ),
            )
          ],
        );
      },
    );
  }
}

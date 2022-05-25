import 'package:flutter/material.dart';
import 'package:travel_blog/constants/colors.dart';
import 'package:travel_blog/models/travel.dart';
import 'package:travel_blog/pages/detailPage/detailPage.dart';

class MostPopular extends StatelessWidget {
  final _mostPopular = Travel.generateMostPopular();

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
      scrollDirection: Axis.horizontal,
      itemCount: _mostPopular.length,
      separatorBuilder: (_, __) {
        return const SizedBox(
          width: 15,
        );
      },
      itemBuilder: (context, index) {
        var mostPopular = _mostPopular[index];
        return GestureDetector(
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (contextBuilder) {
              return DetailPage(travel: mostPopular);
            }));
          },
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(
                  mostPopular.image,
                  width: 144,
                  height: MediaQuery.of(context).size.height,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                bottom: 10,
                left: 10,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Material(
                      color: Colors.transparent,
                      child: Text(
                        mostPopular.name,
                        style: const TextStyle(
                          color: AppColors.mainColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Material(
                      color: Colors.transparent,
                      child: Text(
                        mostPopular.location,
                        style: const TextStyle(
                          color: AppColors.mainColor,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}

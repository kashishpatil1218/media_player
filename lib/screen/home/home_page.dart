import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:media_player/screen/home/video/video_page.dart';

import '../../utils/video_list.dart';



class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(
          children: [
            Swiper(
              itemBuilder: (BuildContext context, int index) {
                return VideoScreen(
                  video: VideoList[index]['video'],
                  username: VideoList[index]['username'],
                  comments: VideoList[index]['comments'],
                  likes: VideoList[index]['likes'],
                );
              },
              itemCount: VideoList.length,
              scrollDirection: Axis.vertical,
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(vertical: screenHeight * 0.02),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              Icons.home,
              color: Colors.white,
              size: screenWidth * 0.07,
            ),
            Icon(
              Icons.search,
              color: Colors.white,
              size: screenWidth * 0.07,
            ),
            Icon(
              Icons.add_box,
              color: Colors.white,
              size: screenWidth * 0.07,
            ),
            Icon(
              Icons.inbox,
              color: Colors.white,
              size: screenWidth * 0.07,
            ),
            Icon(
              Icons.person_2_outlined,
              color: Colors.white,
              size: screenWidth * 0.07,
            ),
          ],
        ),
      ),
    );
  }
}
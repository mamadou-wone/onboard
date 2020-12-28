import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:onboardScrenn/controllers/onboardController.dart';

class OnboardPage extends StatelessWidget {
  final _controller = OnboardController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            PageView.builder(
              controller: _controller.pageController,
              onPageChanged: _controller.selectedIndex,
              itemCount: _controller.onboardPage.length,
              itemBuilder: (context, index) {
                return Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(_controller.onboardPage[index].imageName),
                      SizedBox(
                        height: 25.0,
                      ),
                      Text(
                        _controller.onboardPage[index].title,
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 25.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18.0),
                        child: Text(
                          _controller.onboardPage[index].description,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w400),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
            Positioned(
              bottom: 20,
              left: 20,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: List.generate(
                    _controller.onboardPage.length,
                    (index) => Obx(
                      () {
                        return Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Container(
                            height: 12.0,
                            width: 12.0,
                            decoration: BoxDecoration(
                              color: _controller.selectedIndex.value == index
                                  ? Colors.red
                                  : Colors.grey,
                              shape: BoxShape.circle,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 20.0,
              right: 20.0,
              child: FloatingActionButton(
                child: Text('Next'),
                onPressed: _controller.nextPage,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

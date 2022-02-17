import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:investwise/controllers/onboarding_screen_controller.dart';
import 'package:investwise/theme.dart';
import 'package:investwise/utils/sizeconfig.dart';
import 'package:investwise/utils/styles.dart';

import 'onboarding_slide.dart';

class Body extends StatelessWidget {
  final _controller = OnboardingController();
  final int _numPages = 3;
  final PageController _pageController = PageController(initialPage: 0);
  final int _currentPage = 0;

  // List<Widget> _buildPageIndicator() {
  //   List<Widget> list = [];
  //   for (int i = 0; i < _numPages; i++) {
  //     list.add(i == _currentPage ? _indicator(true) : _indicator(false));
  //   }
  //   return list;
  // }

  // Widget _indicator(bool isActive) {
  //   return AnimatedContainer(
  //     duration: Duration(milliseconds: 150),
  //     margin: EdgeInsets.symmetric(horizontal: 8.0),
  //     height: 8.0,
  //     width: isActive ? 24.0 : 16.0,
  //     decoration: BoxDecoration(
  //       color: isActive ? Colors.white : Colors.grey,
  //       borderRadius: BorderRadius.all(Radius.circular(12)),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.light,
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.1, 0.4, 0.7, 0.9],
                colors: [
                  Color(0xFF28A711),
                  Color(0xFF74B72E),
                  Color(0xFF03C04A),
                  Color(0xFF028A0F),
                ],
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    alignment: Alignment.centerRight,
                    child: FlatButton(
                      onPressed: () => print('Skip'),
                      child: const Text(
                        'Skip',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                  Container(
                      height: 600.0,
                      child: PageView.builder(
                        physics: ClampingScrollPhysics(),
                        controller: _pageController,
                        onPageChanged: _controller.selectedPageIndex,
                        itemCount: _controller.onboardingPages.length,
                        itemBuilder: (context, index) => SplashContent(
                          image: _controller.onboardingPages[index].imageAsset,
                          title: _controller.onboardingPages[index].title,
                          desc: _controller.onboardingPages[index].desc,
                        ),
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      _controller.onboardingPages.length,
                      (index) => Obx(() {
                        return buildDot(index: index);
                      }),
                    ),
                  ),
                  _controller.onboardingPages.length != _numPages - 1
                      ? Expanded(
                          child: Align(
                            alignment: FractionalOffset.bottomRight,
                            child: FlatButton(
                              onPressed: () {
                                _pageController.nextPage(
                                  duration: Duration(milliseconds: 500),
                                  curve: Curves.ease,
                                );
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    'Next',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 22.0,
                                    ),
                                  ),
                                  SizedBox(width: 10.0),
                                  Icon(
                                    Icons.arrow_forward,
                                    color: Colors.white,
                                    size: 30.0,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      : const Text(''),
                ],
              ),
            ),
          ),
        ),
        bottomSheet: Obx(() {
          return getStarted();
        }));
  }

  Widget getStarted() {
    return _controller.selectedPageIndex.value == 2
        ? Container(
            height: 100.0,
            width: double.infinity,
            color: Colors.white,
            child: GestureDetector(
              onTap: () => Get.toNamed('/authintro'),
              child: Center(
                child: Padding(
                  padding: EdgeInsets.only(bottom: 30.0),
                  child: Text(
                    'Get started',
                    style: TextStyle(
                      color: MyTheme.primaryColor,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          )
        : Text('');
  }

  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: _controller.selectedPageIndex.value == index ? 20 : 6,
      decoration: BoxDecoration(
        color: _controller.selectedPageIndex.value == index
            ? Color(0xFFD8D8D8)
            : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}

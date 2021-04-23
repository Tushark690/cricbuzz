import 'package:cricbuzz/widgets/banner-card.dart';
import 'package:cricbuzz/widgets/banner-card2.dart';
import 'package:cricbuzz/widgets/heading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:flutter_carousel_slider/carousel_slider_indicators.dart';
import 'package:page_indicator/page_indicator.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final PageController _controller = PageController();
  List<Widget> _allBanners=[
    BannerCard(),
    BannerCard2()
  ];

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) => _animateSlider());
    super.initState();
  }

  void _animateSlider() {
    Future.delayed(Duration(seconds: 2)).then((_) {
      int nextPage = _controller.page.round() + 1;

      if (nextPage == _allBanners.length) {
        nextPage = 0;
      }

      _controller
          .animateToPage(nextPage, duration: Duration(seconds: 1), curve: Curves.linear)
          .then((_) => _animateSlider());
    });


  }

  @override
  Widget build(BuildContext context) {
    PageIndicatorContainer container = new PageIndicatorContainer(
      pageView: new PageView(
        children: _allBanners,
        controller: _controller,
      ),
      length: _allBanners.length,
      // padding: EdgeInsets.fromLTRB(10, 40, 10, 10),
      indicatorSpace: 10,
      indicatorColor: Colors.grey[350],
      indicatorSelectorColor: Colors.grey,
    );


    return Scaffold(
      appBar: AppBar(

      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 0,vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Heading(),
              AspectRatio(
                  aspectRatio: 16/9,
                  child: Container(color: Colors.white, child: container,)),
              // AspectRatio(
              //   aspectRatio: 16/9,
              //   child: Container(
              //     padding: EdgeInsets.all(10),
              //     child: CarouselSlider.builder(
              //     unlimitedMode: true,
              //     autoSliderDelay: Duration(seconds: 4),
              //     enableAutoSlider: true,
              //     scrollPhysics: BouncingScrollPhysics(),
              //     autoSliderTransitionTime: Duration(milliseconds: 500),
              //     slideBuilder: (index) {
              //       return _allBanners[index];
              //     },
              //     itemCount: _allBanners.length,
              //     // viewportFraction: 0.9,
              //       slideIndicator: CircularSlideIndicator(
              //         padding: EdgeInsets.only(bottom: 0),
              //       ),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

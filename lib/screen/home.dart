import 'package:cricbuzz/widgets/banner-card.dart';
import 'package:cricbuzz/widgets/banner-card2.dart';
import 'package:cricbuzz/widgets/f-videos.dart';
import 'package:cricbuzz/widgets/heading.dart';
import 'package:cricbuzz/widgets/more-button.dart';
import 'package:cricbuzz/widgets/sponsered.dart';
import 'package:cricbuzz/widgets/top-stories.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final PageController _controller = PageController(viewportFraction: 0.85);
  int nextPage=0;
  ScrollController _scrollViewController;
  bool _showAppbar = true;
  bool isScrollingDown = false;

  List<Widget> _allBanners=[
    BannerCard(),
    BannerCard2(),
    BannerCard(),
    BannerCard2(),
    BannerCard(),
    BannerCard2(),
  ];

  List<Widget> _allFVideos=[
    FVideos("https://www.cricbuzz.com/a/img/v1/290x164/i1/c205834/rajasthan-v-kolkata-match-18.jpg","Rajasthan v Kolkata, Match 18: Preview","16h ago"),
    FVideos("https://www.cricbuzz.com/a/img/v1/290x164/i1/c205769/indian-t20-league-week-2-revie.jpg","Rajasthan v Kolkata, Match 18: Preview","16h ago"),
    FVideos("https://www.cricbuzz.com/a/img/v1/290x164/i1/c205839/pollard-and-pandya-brothers-ne.jpg","Rajasthan v Kolkata, Match 18: Preview","16h ago"),
    FVideos("https://www.cricbuzz.com/a/img/v1/290x164/i1/c205440/buttlers-wicket-of-jadeja-bes.jpg","Rajasthan v Kolkata, Match 18: Preview","16h ago"),
    FVideos("https://www.cricbuzz.com/a/img/v1/290x164/i1/c205834/rajasthan-v-kolkata-match-18.jpg","Rajasthan v Kolkata, Match 18: Preview","16h ago"),
    FVideos("https://www.cricbuzz.com/a/img/v1/290x164/i1/c205833/mumbai-will-be-happy-to-move-a.jpg","Rajasthan v Kolkata, Match 18: Preview","16h ago"),
    FVideos("https://www.cricbuzz.com/a/img/v1/290x164/i1/c205433/sanju-samson-has-to-learn-to-s.jpg","Rajasthan v Kolkata, Match 18: Preview","16h ago"),
    MoreButton()
  ];


  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) => _animateSlider());
    _scrollViewController = new ScrollController();
    _scrollViewController.addListener(() {
      if (_scrollViewController.position.userScrollDirection == ScrollDirection.reverse) {
        if (!isScrollingDown) {
          isScrollingDown = true;
          _showAppbar = false;
          setState(() {});
        }
      }

      if (_scrollViewController.position.userScrollDirection == ScrollDirection.forward) {
        if (isScrollingDown) {
          isScrollingDown = false;
          _showAppbar = true;
          setState(() {});
        }
      }
    });
    super.initState();
  }

  void _animateSlider() {
    Future.delayed(Duration(seconds: 10)).then((_) {
      setState(() {
        nextPage = _controller.page.round()+1;
        if (nextPage == _allBanners.length) {
          nextPage = 0;
        }
      });
      _controller
          .animateToPage(nextPage, duration: Duration(milliseconds: 600), curve: Curves.linear)
          .then((_) => _animateSlider());
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _scrollViewController.dispose();
    _scrollViewController.removeListener(() {});
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            AnimatedContainer(
              height: _showAppbar ? 56.0 : 0.0,
              duration: Duration(milliseconds: 200),
              child: AppBar(
                title: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Image.network("https://m.cricbuzz.com/public/images/cricbuzz/cb_logo.png",height: 30,),
                ),
                actions: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Icon(Icons.person_sharp,color: Colors.white,),
                  )
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                controller: _scrollViewController,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Heading("FEATURED MATCHES"),
                    Container(
                      height: MediaQuery.of(context).size.height*2.5/10,
                      alignment: Alignment.centerLeft,
                      child: PageView.builder(
                        physics: PageScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        controller: _controller,
                        itemCount:_allBanners.length,
                        onPageChanged: (pageIndex){
                          setState(() {
                            nextPage=pageIndex;
                          });
                        },
                        itemBuilder: (context,i){
                          return Padding(
                            child: _allBanners[i],
                            padding: EdgeInsets.only(left: 0),
                          );
                        },
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height*0.3/10,
                      child: Center(
                        child: ListView.builder(
                          shrinkWrap: true,
                          primary: false,
                          scrollDirection: Axis.horizontal,
                          itemCount: _allBanners.length,
                          itemBuilder: (context,i){
                            return Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 3),
                              child: Container(
                                padding: EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: nextPage==i?Colors.black54:Colors.black26,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    SizedBox(height: 5,),
                    Heading("FEATURED VIDEOS"),
                    Container(
                      height: MediaQuery.of(context).size.height*3/10,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: _allFVideos,
                      ),
                    ),
                    // SizedBox(height: 10,),
                    Heading("TRENDING"),
                    Container(
                      height: MediaQuery.of(context).size.height*3/10,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: _allFVideos,
                      ),
                    ),
                    SizedBox(height: 10,),
                    Sponsored("SPONSORED", "https://tpc.googlesyndication.com/simgad/4695459442067522482",),
                    Heading("TOP STORIES"),
                    TopStories("INDIAN PREMIERE LEAGUE 2021","https://www.cricbuzz.com/a/img/v1/980x654/i1/c205842/between-them-kishan-pollard.jpg","Middle-order muddle leaves MI hurting","After three losses, focus on Pollard, Kishan and Pandyas as MI aim to regroup","Rahul, Gayle help PBKS snap back to winning ways"),
                    SizedBox(height: 10,),
                    TopStories("ZIMBABWE V PAKISTAN, 2021","https://www.cricbuzz.com/a/img/v1/595x396/i1/c205845/it-was-a-collective-collapse-a.jpg","Babar disappointed with 'painful performance' after loss against Zimbabwe","After three losses, focus on Pollard, Kishan and Pandyas as MI aim to regroup",""),
                    SizedBox(height: 10,),
                    TopStories("TO BOWL OR NOT TO BOWL...?","https://www.cricbuzz.com/a/img/v1/980x654/i1/c205850/a-basic-query-but-there-are-no.jpg","Is yorker still the best go-to weapon for a fast bowler?","A basic query but there are no straightforward responses given the current era of batting we find ourselves in. ©BCCI",""),
                    SizedBox(height: 10,),
                    Sponsored("SPONSORED", "https://tpc.googlesyndication.com/simgad/4695459442067522482",),
                    SizedBox(height: 10,),
                    TopStories("PREVIEW - CSK VS RCB","https://www.cricbuzz.com/a/img/v1/595x396/i1/c205856/moeen-has-injected-much-needed.jpg","Resurgent CSK aim to finish Wankhede leg on a high","Moeen has injected much-needed urgency to that top-order, taking CSK's middle-overs run rate to 9.56 this year © BCCI/IPL",""),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

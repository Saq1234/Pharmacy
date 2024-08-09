import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:pharmacy/screens/detailScreen.dart';

import '../model/drugsModel.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final List<String> bannerImgList = [
    'https://s3-alpha-sig.figma.com/img/db22/34a0/b0b9a2426fe81de41ef9e970c0221cd4?Expires=1724025600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=FgbM3TC-lJe5Kkc9X01TMHMZXxdrlDsRswxTQdAvd4aQnH0Tv1psIxCJ6wk~W2-cUFjSRbwJSRDIgT0MIGUNyKnxdDC3715sQIqSAAqmzNs-D9s5mOYRx3To2tvLQtbudmZNK-eJlZyV4B0n5CCXh8q9X6e577oJRKzGc5MNL3p3pUFfT2jmxZCGqgxescA-eMv3zbFFE49QV7QRm9ruW1rkZwczZ3ZYgytnOr8c~FOLkFJj4d~y~YgityseT3VcDJeyMO0-OYjSNkxDe~k38TQxNO9hqsFv8SBoWM1Ph8t8wKC63La9EzCTiQkQZCy8tlER4Idrg9rOrcypanomlA__',
    'https://s3-alpha-sig.figma.com/img/ea60/9020/89e537a6f34a90d164c9cc4b549d5028?Expires=1724025600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=UOjPWLoDNC4QQWa11UvO5py6bqrLW75Dm9mbAfuegF3tgM9xAILcMhScP7nE~nZ5z43VT-cU5pHvXKq2btRGAJCCjQ6Iv0~BQd2k1FlU7igdZrtY679RCsWYgUQQQFL~k8HTK2JwMQ4XsD1TdAJMFDk07hdcB2r7rZtYM~8L22mz7XzKfHOHbwAffSmUCPV7Ccalm-mrckXqtvaW11SO0coa0Hvh4jkfs6cvb6BII8vrB1irg9eKlQ60Bk~i5pd~3OUHQIlZMHOwBD1szbVhzR-g~BNYtlZX9Yd3U9wT9KcEES9gwjitnZCtsFCANRcwlA0lT5yrfcvQSuXNQk-jNw__',
  ];
  final CarouselController _controller = CarouselController();
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          // AppBar code
          Container(
            height: 60,
            decoration: const BoxDecoration(
              color: Color(0xff1b8f97),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "PharmaConnect",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontFamily: 'Helvetica Neue'),
                    ),
                    Icon(
                      Icons.notifications,
                      color: Colors.white,
                    )
                  ]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // CarouselSlider code

                CarouselSlider(
                  carouselController: _controller,
                  options: CarouselOptions(
                    height: 200,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 3),
                    viewportFraction: 1.0,
                    enlargeCenterPage: true,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _currentIndex = index;
                      });
                    },
                  ),
                  items: bannerImgList
                      .map((item) => Container(
                            margin: const EdgeInsets.symmetric(horizontal: 5.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(5.0),
                              child: Image.network(item,
                                  fit: BoxFit.fill, width: 1000),
                            ),
                          ))
                      .toList(),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: bannerImgList.asMap().entries.map((entry) {
                    int index = entry.key;
                    return GestureDetector(
                      onTap: () => _controller.jumpToPage(index),
                      child: Container(
                        width: 10.0,
                        height: 10.0,
                        margin: const EdgeInsets.symmetric(horizontal: 3.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: _currentIndex == index
                              ? Colors.blue
                              : Colors.grey,
                        ),
                      ),
                    );
                  }).toList(),
                ),
                const SizedBox(height: 30),
                const Text(
                  "Sample Drugs",
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: "Roboto",
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                const Text(
                  "List of drugs assigned to you",
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: "Roboto",
                    color: Color(0xff90979C),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                myWidget(druglist),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }

  Widget myWidget(List<DrugsModel> drugList) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      height: MediaQuery.of(context).size.height,
      child: GridView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: drugList.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20.0,
          crossAxisSpacing: 20.0,
          childAspectRatio: 0.9,
        ),
        itemBuilder: (BuildContext context, int index) {
          DrugsModel discover = drugList[index];
          return Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          DetailScreen(discover.title, discover.image),
                    ),
                  );
                },
                child: Container(
                  width: 163,
                  height: 130,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(0),
                      topRight: Radius.circular(39),
                      bottomRight: Radius.circular(0),
                      bottomLeft: Radius.circular(39),
                    ),
                    color: discover.bgColor,
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 10,
                        child: Container(
                          decoration: BoxDecoration(
                            color: discover.titleColor,
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(0),
                              topRight: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                              bottomLeft: Radius.circular(0),
                            ),
                          ),
                          child: Text(discover.unit.toString()),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Container(
                            height: 82,
                            width: 102,
                            child: Image.network(
                              discover.image.toString(),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: const EdgeInsets.only(
                            bottom: 10,
                            right: 10,
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                                color: const Color(0xff10676E),
                                borderRadius: BorderRadius.circular(4)),
                            height: 24,
                            width: 24,
                            child: const Icon(
                              Icons.keyboard_arrow_right,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Flexible(
                child: Text(
                  discover.title.toString(),
                  style: const TextStyle(
                    fontFamily: "Roboto",
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis, // Add this line
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

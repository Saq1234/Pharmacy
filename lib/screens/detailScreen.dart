// ignore: file_names
import 'package:flutter/material.dart';
import 'package:pharmacy/model/drugsModel.dart';
import 'package:pharmacy/screens/bottom_navigation.dart';
import 'package:pharmacy/screens/myorder.dart';

// ignore: must_be_immutable
class DetailScreen extends StatefulWidget {
  String? appTitile;
  String? image;
  DetailScreen(this.appTitile, this.image, {super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  bool _isExpanded = false;

  void _toggleExpansion() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    if (_counter > 0) {
      setState(() {
        _counter--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            height: 60,
            decoration: const BoxDecoration(
              color: Color(0xff1b8f97),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const DashBottomNavigation(),
                          ),
                        );
                      },
                      child: const Icon(
                        Icons.keyboard_arrow_left,
                        color: Colors.white,
                      ),
                    ),
                    Flexible(
                      child: Text(
                        widget.appTitile.toString(),
                        style: const TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontFamily: 'Roboto'),
                        overflow: TextOverflow.ellipsis, // Add this line
                      ),
                    ),
                    const Icon(
                      Icons.notifications,
                      color: Colors.white,
                    )
                  ]),
            ),
          ),
          SizedBox(
              height: 224,
              child: Center(
                child: Image.network(
                  widget.image.toString(),
                  fit: BoxFit.cover,
                ),
              )),
          Text(
            widget.appTitile.toString(),
            style: const TextStyle(
                fontSize: 14,
                color: Color(0xff3C3737),
                fontWeight: FontWeight.w500,
                fontFamily: 'Roboto'),
            overflow: TextOverflow.ellipsis, // Add this line
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const Text(
                "FREE",
                style: TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto'),
                overflow: TextOverflow.ellipsis, // Add this line
              ),
              const SizedBox(
                width: 2,
              ),
              const Text(
                "Sample",
                style: TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'Roboto'),
                overflow: TextOverflow.ellipsis, // Add this line
              ),
              const SizedBox(
                width: 2,
              ),
              Container(
                padding: const EdgeInsets.only(
                    left: 10, right: 10, top: 2, bottom: 2),
                decoration: BoxDecoration(
                  color: const Color(0xffC9E8EB),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                    child: Text(
                  "TRIAL",
                )),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 28,
            width: double.infinity,
            color: const Color(0xffD8ECFF),
            child: const Center(
                child: Text("Maximum of 12 unit can be added in the cart.")),
          ),
          _productDetai(),
          myWidget(druglist),
        ]),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Container(
          height:
              40, // Adjust this value to control the height of the BottomAppBar
          child: Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(right: 10), // Adjust margin
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.remove),
                        onPressed: () {
                          _decrementCounter();
                        },
                      ),
                      Text('$_counter'),
                      IconButton(
                        icon: const Icon(Icons.add),
                        onPressed: () {
                          _incrementCounter();
                        },
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MyOrder(widget.image),
                      ),
                    );
                  },
                  child: Container(
                    color: const Color(0xff10676E), // First color
                    child: const Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Place Order',
                            style: TextStyle(color: Colors.white),
                          ),
                          Icon(
                            Icons.keyboard_arrow_right,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _productDetai() {
    return SingleChildScrollView(
        child: Container(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Product Information',
            style: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16.0),
          const Text(
            'Dr. Odin BPCBOA 3H Blood Pressure Machine is a fully automatic digital blood pressure monitor device that enables a high-speed and reliable measurement of systolic and diastolic blood pressure as well as the pulse through the oscillometric method.',
            style: TextStyle(
                fontSize: 10,
                color: Color(0xff5A5959),
                fontWeight: FontWeight.normal,
                fontFamily: "Roboto"),
          ),
          const SizedBox(height: 16.0),
          const Text(
            'Uses:',
            style: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            'It is used for measuring the blood pressure of individuals.',
            style: TextStyle(
                fontSize: 10,
                color: Color(0xff5A5959),
                fontWeight: FontWeight.normal,
                fontFamily: "Roboto"),
          ),
          const SizedBox(height: 16.0),
          const Text(
            'Product Features And Specifications:',
            style: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          if (_isExpanded)
            Column(
              children: [
                _buildFeature(
                    'It has a portable design which makes it easy to carry anywhere at any time.'),
                _buildFeature(
                    'It has an automatic shutdown function which saves power.'),
                _buildFeature(
                    'It can support 2 users at a time with 120 memories each.'),
                _buildFeature(
                    'It helps to measure irregular heartbeat as well.'),
                _buildFeature('It comes with a large LED display.'),
                _buildFeature(
                    'It has dual power modes i.e. it is chargeable with a USB power source or it can be powered with 4 AA alkaline batteries.'),
                _buildFeature(
                    "It has an average value function that helps to analyze blood pressure variation."),
                _buildFeature("It has a one-button easy operation."),
              ],
            ),
          const SizedBox(height: 16.0),
          const Text(
            'Directions For Use:',
            style: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            'Use as directed on the label.',
            style: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.normal,
            ),
          ),
          const SizedBox(height: 16.0),
          const Text(
            'Safety Information:',
            style: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            '.  Store in a cool and dry place away from direct sunlight.',
            style: TextStyle(
                fontSize: 10,
                color: Color(0xff5A5959),
                fontWeight: FontWeight.normal,
                fontFamily: "Roboto"),
          ),
          const Text(
            '.  Read the product manual carefully before use.',
            style: TextStyle(
                fontSize: 10,
                color: Color(0xff5A5959),
                fontWeight: FontWeight.normal,
                fontFamily: "Roboto"),
          ),
          const Text(
            '.  Keep out of reach of children.',
            style: TextStyle(
                fontSize: 10,
                color: Color(0xff5A5959),
                fontWeight: FontWeight.normal,
                fontFamily: "Roboto"),
          ),
          const SizedBox(height: 16.0),
          Align(
            alignment: Alignment.bottomRight,
            child: GestureDetector(
              onTap: _toggleExpansion,
              child: Text(
                _isExpanded ? "View Less ^" : "View More ^",
                style: const TextStyle(
                  color: Color(0xff1890FF),
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }

  Widget _buildFeature(String feature) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center, // Center items horizontally
      crossAxisAlignment: CrossAxisAlignment.center, // Center items vertically
      children: [
        const Text("."),
        const SizedBox(width: 10),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Text(
            feature,
            style: const TextStyle(
                fontSize: 10,
                fontFamily: "Roboto",
                fontWeight: FontWeight.normal,
                color: Color(0xff5A5959)),
          ),
        )),
      ],
    );
  }

  Widget myWidget(List<DrugsModel> drugList) {
    List<DrugsModel> limitedDrugList = drugList.take(2).toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Especially for you',
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Text(
          'List of drugs assigned to you',
          style: TextStyle(
            fontSize: 12.0,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          margin: const EdgeInsets.only(right: 10),
          height: MediaQuery.of(context).size.height / 3,
          child: GridView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: limitedDrugList.length,
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
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) =>
                      //         DetailScreen(discover.title, discover.image),
                      //   ),
                      // );
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
        ),
      ],
    );
  }
}

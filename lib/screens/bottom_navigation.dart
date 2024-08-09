import 'package:flutter/material.dart';
import 'package:pharmacy/screens/myorder.dart';
import 'package:pharmacy/screens/profile.dart';
import 'package:pharmacy/screens/cart.dart';
import 'dashboard.dart';

class DashBottomNavigation extends StatefulWidget {
  const DashBottomNavigation({Key? key}) : super(key: key);

  @override
  State<DashBottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<DashBottomNavigation> {
  int currentIndex = 0;
  final screen = [
    const Dashboard(),
    MyOrder(
        "https://s3-alpha-sig.figma.com/img/41f6/1812/219b3e6fa6d02c306b1e6dd122bb75c7?Expires=1724025600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=H6U1Ctx3IVBIIjpL7IvYne4cVoQDZZ3RCcvVZyJ-ytiNydnYwDO6nac8jqkx1bLliPDqXwAcoWyN0k4-5GVFfgOT4wji2w~mvye56FZLYTK8TeC0MKMsL6~Ji05~ELrod4enFq~k9pJjAFckkrgjV4vRojUKN8GW9-y0sGh8uh~5LfO1W90VR4dp-2OLlLZTJI2KuGCGGrObU1s3Cc8Eab~ktNwsstytFaFVAeEdbQ1FW~A44Bqu5QMq7~qB2J6TYh3fT1m6CEVubYyGmC70wz-ZmE-46XrELY7oq8LUA1rWawyJAXc44RAcD8wU~gABRMjXAxFHaMcPgwr6jJX-EQ__"),
    const Cart(),
    const Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: const Color(0xffA1A5B7),
        backgroundColor: Colors.white,
        currentIndex: currentIndex,
        selectedItemColor: const Color(0xff2B9794),
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.one_k_rounded), label: 'Order'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'Cart'),
          BottomNavigationBarItem(icon: Icon(Icons.face), label: 'Profile'),
        ],
      ),
    );
  }
}

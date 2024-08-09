import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyOrder extends StatefulWidget {
  String? image;
  MyOrder(this.image, {super.key});

  @override
  State<MyOrder> createState() => _MyOrderState();
}

class _MyOrderState extends State<MyOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xb3edecec),
      body: Column(children: [
        //AppBar code
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
            child: Row(children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(
                  Icons.keyboard_arrow_left,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              const Text(
                "MyOrder",
                style: TextStyle(
                    fontSize: 16, color: Colors.white, fontFamily: 'Roboto'),
                overflow: TextOverflow.ellipsis, // Add this line
              ),
              const Spacer(),
              const Icon(
                Icons.notifications,
                color: Colors.white,
              )
            ]),
          ),
        ),
        Container(
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.all(30),
          color: Colors.white,
          child: Column(children: [
            const Row(
              children: [
                Text(
                  "Order: #123456",
                  style: TextStyle(fontSize: 11, fontFamily: "Roboto"),
                ),
                Spacer(),
                Icon(
                  Icons.arrow_right_alt,
                  color: Colors.blue,
                )
              ],
            ),
            const Divider(),
            Row(
              children: [
                widget.image != null
                    ? SizedBox(
                        height: 32,
                        width: 32,
                        child: Image.network(widget.image.toString()),
                      )
                    : SizedBox(
                        height: 32,
                        width: 32,
                        child: Image.network(
                            "https://s3-alpha-sig.figma.com/img/41f6/1812/219b3e6fa6d02c306b1e6dd122bb75c7?Expires=1724025600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=H6U1Ctx3IVBIIjpL7IvYne4cVoQDZZ3RCcvVZyJ-ytiNydnYwDO6nac8jqkx1bLliPDqXwAcoWyN0k4-5GVFfgOT4wji2w~mvye56FZLYTK8TeC0MKMsL6~Ji05~ELrod4enFq~k9pJjAFckkrgjV4vRojUKN8GW9-y0sGh8uh~5LfO1W90VR4dp-2OLlLZTJI2KuGCGGrObU1s3Cc8Eab~ktNwsstytFaFVAeEdbQ1FW~A44Bqu5QMq7~qB2J6TYh3fT1m6CEVubYyGmC70wz-ZmE-46XrELY7oq8LUA1rWawyJAXc44RAcD8wU~gABRMjXAxFHaMcPgwr6jJX-EQ__"),
                      ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: const TextSpan(
                          text: 'Delivered',
                          style: TextStyle(color: Colors.green),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'on 21 Apr, 24',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Text("+5 items")
                    ],
                  ),
                )
              ],
            )
          ]),
        ),
        Container(
          padding: const EdgeInsets.all(30),
          margin: const EdgeInsets.only(left: 20, right: 20),
          color: Colors.white,
          child: Column(children: [
            const Row(
              children: [
                Text(
                  "Order: #123456",
                  style: TextStyle(fontSize: 11, fontFamily: "Roboto"),
                ),
                Spacer(),
                Icon(
                  Icons.arrow_right_alt,
                  color: Colors.blue,
                )
              ],
            ),
            const Divider(),
            Row(
              children: [
                widget.image != null
                    ? SizedBox(
                        height: 32,
                        width: 32,
                        child: Image.network(widget.image.toString()),
                      )
                    : SizedBox(
                        height: 32,
                        width: 32,
                        child: Image.network(
                            "https://s3-alpha-sig.figma.com/img/41f6/1812/219b3e6fa6d02c306b1e6dd122bb75c7?Expires=1724025600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=H6U1Ctx3IVBIIjpL7IvYne4cVoQDZZ3RCcvVZyJ-ytiNydnYwDO6nac8jqkx1bLliPDqXwAcoWyN0k4-5GVFfgOT4wji2w~mvye56FZLYTK8TeC0MKMsL6~Ji05~ELrod4enFq~k9pJjAFckkrgjV4vRojUKN8GW9-y0sGh8uh~5LfO1W90VR4dp-2OLlLZTJI2KuGCGGrObU1s3Cc8Eab~ktNwsstytFaFVAeEdbQ1FW~A44Bqu5QMq7~qB2J6TYh3fT1m6CEVubYyGmC70wz-ZmE-46XrELY7oq8LUA1rWawyJAXc44RAcD8wU~gABRMjXAxFHaMcPgwr6jJX-EQ__"),
                      ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: const TextSpan(
                          text: 'Delivered',
                          style: TextStyle(color: Colors.green),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'on 21 Apr, 24',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Text("+5 items"),
                      const Text(
                        "Track Order",
                        style: TextStyle(
                            color: Colors.green,
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.green // Add underline
                            ),
                      ),
                    ],
                  ),
                )
              ],
            )
          ]),
        ),
      ]),
    );
  }
}

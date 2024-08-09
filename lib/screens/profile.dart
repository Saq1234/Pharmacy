import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:pharmacy/screens/bottom_navigation.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController practitionerIdController = TextEditingController();
  TextEditingController addressController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  bool enableProfile = false;

  String? _name;
  String? _phone;
  String? _email;
  String? _practitionerId;
  String? _billingAddress;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xb3edecec),
      body: SingleChildScrollView(
        child: Column(children: [
          //AppBAr Code
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
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  "Profile",
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
          //profile section code
          _profile(),
          // adding profile detail
          enableProfile == true ? _profileDetails() : SizedBox.shrink(),
        ]),
      ),
    );
  }

  Widget _profile() {
    return Container(
      padding: const EdgeInsets.only(left: 10),
      margin: const EdgeInsets.all(10),
      height: 100,
      color: const Color(0xffF5FEFF),
      child: Row(children: [
        ClipOval(
          child: Image.network(
            'https://s3-alpha-sig.figma.com/img/67da/9fdd/d372b1b5b44ffef41eed6ceb810ddf8a?Expires=1724025600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=F7osqf0L5aZPkowc5eZV4wekzNwwNbWpSU6Q2GCxgmMqzGY4rNMS~H8NIa5mO6~ONgOQpNikx93ffnzSei59TDa7C7a1oZ9fweZklszyJ6zR4Zjk2WaAKrrbMD2VvzN3ZO8eEPJDKlULcpSUDkAzNcD-sp0KGmcSSzBjyyM6gCwKmPUdttQcBAY0txMs9geRMM3W3ZAcssKDkodYevRWMudrJOa~~jmgAVu63dxavovKSsx0xpUnKFexusmdSBVaM8j3-DN1yKL7qR7tthVYg~QGVZMkTbOyhSAfMHirucw3u2xQEOsdDGYHJZKOBmCi8Hoq0Vo07a6u8E61oUJzTw__',
            width: 73.0,
            height: 73.0,
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0, top: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Dr. Rachel Green",
                style: TextStyle(
                    fontFamily: "Roboto",
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    enableProfile = true;
                  });
                },
                child: Container(
                  height: 28,
                  padding: const EdgeInsets.all(5),
                  margin: const EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                      border: Border.all(
                    color: Colors.black,
                  )),
                  child: const Text(
                    "Edit details",
                    style: TextStyle(fontSize: 12),
                  ),
                ),
              )
            ],
          ),
        )
      ]),
    );
  }

  Widget _profileDetails() {
    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Name",
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: nameController,
                decoration: InputDecoration(
                  hintText: 'Name',
                  hintStyle: const TextStyle(
                      fontSize: 14,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                      color: Color(0xff667085)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.blue),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 20.0),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
                onSaved: (value) {
                  _name = value;
                },
              ),
              const SizedBox(height: 16),
              const Text(
                "Phone",
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              TextFormField(
                buildCounter: (BuildContext context,
                    {int? currentLength, int? maxLength, bool? isFocused}) {
                  return SizedBox.shrink(); // This hides the length indicator
                },
                maxLength: 10,
                controller: phoneController,
                decoration: InputDecoration(
                  hintText: 'Phone',
                  hintStyle: const TextStyle(
                      fontSize: 14,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                      color: Color(0xff667085)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.blue),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 20.0),
                ),
                keyboardType: TextInputType.phone,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your phone number';
                  }
                  return null;
                },
                onSaved: (value) {
                  _phone = value;
                },
              ),
              const SizedBox(height: 16),
              const Text(
                "Email",
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                  hintText: 'Email',
                  hintStyle: const TextStyle(
                      fontSize: 14,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                      color: Color(0xff667085)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.blue),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 20.0),
                ),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                    return 'Please enter a valid email';
                  }
                  return null;
                },
                onSaved: (value) {
                  _email = value;
                },
              ),
              const SizedBox(height: 16),
              const Text(
                "Practitioner ID",
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: practitionerIdController,
                decoration: InputDecoration(
                  hintText: 'Practitioner ID',
                  hintStyle: const TextStyle(
                      fontSize: 14,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                      color: Color(0xff667085)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.blue),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 20.0),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your Practitioner ID';
                  }
                  return null;
                },
                onSaved: (value) {
                  _practitionerId = value;
                },
              ),
              const SizedBox(height: 16),
              const Text(
                "Billing Address",
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: addressController,
                decoration: InputDecoration(
                  hintText: 'Billing Address',
                  hintStyle: const TextStyle(
                      fontSize: 14,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                      color: Color(0xff667085)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.blue),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 20.0),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your billing address';
                  }
                  return null;
                },
                onSaved: (value) {
                  _billingAddress = value;
                },
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        const Color(0xff10676E), // Background color
                    foregroundColor: Colors.white, // Text color
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      CollectionReference collectionReference =
                          FirebaseFirestore.instance.collection('pharmacy');
                      collectionReference.add({
                        'name': nameController.text,
                        'phone': phoneController.text,
                        'email': emailController.text,
                        'Practitioner ID': practitionerIdController.text,
                        'Billing Address': addressController.text,
                      });

                      // print('Name: $_name');
                      // print('Phone: $_phone');
                      // print('Email: $_email');
                      // print('Practitioner ID: $_practitionerId');
                      // print('Billing Address: $_billingAddress');
                    }
                  },
                  child: const Text('Save'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

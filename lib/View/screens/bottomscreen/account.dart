

import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    List<IconData> icons = [
      Icons.add,
      Icons.person,
      Icons.wallet,
      Icons.location_city,
      Icons.language,
      Icons.notification_important
    ];

    List<String> settings = [
      "Flipkart Plus",
      "Edit Profile",
      "Saved Cards",
      "Saved Address",
      "Select Language",
      "Notification Settings"
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Hey! User",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width * .4,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.grey)),
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.inventory_2,
                      color: const Color.fromARGB(255, 7, 64, 110),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Orders",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width * .4,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.grey)),
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.favorite,
                      color: const Color.fromARGB(255, 7, 64, 110),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Wishlist",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width * .4,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.grey)),
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.redeem,
                      color: const Color.fromARGB(255, 7, 64, 110),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Coupons",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width * .4,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.grey)),
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.support_agent,
                      color: const Color.fromARGB(255, 7, 64, 110),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Help Center",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Container(
          height: 10,
          width: MediaQuery.of(context).size.width * 1,
          color: Color.fromARGB(255, 230, 225, 225),
        ),
        Container(
          height: 100,
          width: MediaQuery.of(context).size.width * 1,
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 10,
                    height: 30,
                  ),
                  Text(
                    "Credit Options",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.local_atm,
                    color: const Color.fromARGB(255, 7, 64, 110),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Flipkart Pay Later"),
                      Text("Get 10000* worth Times Prime benefits")
                    ],
                  ),
                  SizedBox(
                    width: 80,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                  )
                ],
              ),
            ],
          ),
        ),
        Container(
          height: 10,
          width: MediaQuery.of(context).size.width * 1,
          color: Color.fromARGB(255, 230, 225, 225),
        ),
        Row(
          children: [
            SizedBox(
              height: 30,
              width: 10,
            ),
            Text(
              "Account Settings",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Row(children: [
              SizedBox(
                width: 10,
              ),
              Icon(
                icons[index],
                color: const Color.fromARGB(255, 7, 64, 110),
              ),
              SizedBox(
                width: 30,
              ),
              Text(
                settings[index],
                style: TextStyle(fontSize: 16),
              ),
            ]),
          ),
          itemCount: icons.length,
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: MediaQuery.of(context).size.height * .1,
          width: MediaQuery.of(context).size.width * 1,
          color: Color.fromARGB(255, 230, 225, 225),
          child: Center(
            child: ElevatedButton(onPressed: () {}, child: Text("Log Out")),
          ),
        ),
      ]),
    );
  }
}

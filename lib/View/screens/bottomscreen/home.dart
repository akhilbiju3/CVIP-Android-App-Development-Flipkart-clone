import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    GlobalKey<CarouselSliderState> _sliderKey = GlobalKey();

    List<String> slider = [
      "https://images.pexels.com/photos/2536965/pexels-photo-2536965.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/135620/pexels-photo-135620.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/297933/pexels-photo-297933.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/4498143/pexels-photo-4498143.jpeg?auto=compress&cs=tinysrgb&w=600"
    ];

    List<String> circular = [
      "assets/images/icons8-coin-48.png",
      "assets/images/icons8-cash-48.png",
      "assets/images/icons8-fire-50.png",
      "assets/images/icons8-game-48.png",
      "assets/images/icons8-group-48.png",
      "assets/images/icons8-live-48.png",
      "assets/images/icons8-seller-64.png"
    ];

    List<String> category = [
      "Supercoin",
      "Money+",
      "FireDrops",
      "Game",
      "Group Buy",
      "Live",
      "Become a seller"
    ];

    List<String> sale = [
      "https://images.pexels.com/photos/46148/aircraft-jet-landing-cloud-46148.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/9978709/pexels-photo-9978709.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/1649771/pexels-photo-1649771.jpeg?auto=compress&cs=tinysrgb&w=600"
    ];

    List<String> saleList1 = [
      "Indigo flights",
      "Sale is Live",
      "Best of Audio"
    ];
    List<String> saleList2 = ["Starting ₹1,299*", "From ₹3,999*", "From ₹899*"];

    List<String> premiumimg = [
      "https://images.pexels.com/photos/3394650/pexels-photo-3394650.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/788946/pexels-photo-788946.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/437037/pexels-photo-437037.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/1616036/pexels-photo-1616036.jpeg?auto=compress&cs=tinysrgb&w=600"
    ];
    List<String> premiumtext = [
      "Neckband",
      "Mobiles",
      "Wearable Smart Devices",
      "Food Spreads"
    ];
    List<String> premiumtext1 = [
      "Top Sellers",
      "Bestsellers",
      "Top Picks",
      "Top Collections"
    ];

    List<String> Sponsered = [
      "https://images.pexels.com/photos/2787249/pexels-photo-2787249.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/15882042/pexels-photo-15882042/free-photo-of-portret-van-een-powerbank.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/2779018/pexels-photo-2779018.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/16407082/pexels-photo-16407082/free-photo-of-hairdressing-accessories-on-white-background.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/4226866/pexels-photo-4226866.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/4526469/pexels-photo-4526469.jpeg?auto=compress&cs=tinysrgb&w=600"
    ];

    List<String> sponsortext1 = [
      "Get Fit with Adidas ",
      "Super Powerbank",
      "2.01| BT Calling",
      "Hair Styler",
      "Specs",
      "Lights"
    ];

    List<String> sponsortext2 = [
      "Sale on 18th Sep",
      "From ₹699 ",
      "₹1,199",
      "Shop Now",
      "Shop Now",
      "Special Offer Now"
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Image.asset(
            "assets/images/flip.png",
            height: MediaQuery.of(context).size.height * .15,
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                brandmall(),
                searchbar(context),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            carousal(_sliderKey, slider),
            const SizedBox(
              height: 10,
            ),
            Category(context, circular, category),
            SizedBox(
              height: 10,
            ),
            Divider(
              thickness: 1,
            ),
            rectanglecategory(context, sale, saleList1, saleList2),
            gridcategory(context, premiumimg, premiumtext, premiumtext1),
            Container(
              height: MediaQuery.of(context).size.height * .4,
              width: MediaQuery.of(context).size.width * 1,
              color: Colors.white,
              child: Column(children: [
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        "Sponsored",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      )
                    ],
                  ),
                ),
                GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3),
                  itemBuilder: (context, index) => Container(
                    margin: EdgeInsets.all(5),
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [BoxShadow(color: Colors.black)]),
                    child: Column(
                      children: [
                        Container(
                          height: 80,
                          width: MediaQuery.of(context).size.width * 1,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(Sponsered[index]),
                                  fit: BoxFit.fill),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10))),
                        ),
                        SizedBox(
                          height: 9,
                        ),
                        Text(
                          sponsortext1[index],
                          style: TextStyle(fontSize: 15),
                        ),
                        Text(sponsortext2[index],
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.bold))
                      ],
                    ),
                  ),
                  itemCount: 6,
                )
              ]),
            )
          ],
        ),
      ),
    );
  }

  Container gridcategory(BuildContext context, List<String> premiumimg,
      List<String> premiumtext, List<String> premiumtext1) {
    return Container(
      height: MediaQuery.of(context).size.height * .6,
      width: MediaQuery.of(context).size.width * 1,
      color: const Color.fromARGB(255, 235, 235, 90),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Premium Finds For You",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                CircleAvatar(
                  child: Icon(Icons.arrow_forward_ios, size: 18),
                  radius: 17,
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
            itemBuilder: (context, index) => Container(
              margin: EdgeInsets.all(5),
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Container(
                    height: 130,
                    width: MediaQuery.of(context).size.width * 1,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(premiumimg[index]),
                            fit: BoxFit.fill),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10))),
                  ),
                  SizedBox(
                    height: 13,
                  ),
                  Text(
                    premiumtext[index],
                    style: TextStyle(fontSize: 15),
                  ),
                  Text(premiumtext1[index],
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.green,
                          fontWeight: FontWeight.bold))
                ],
              ),
            ),
            itemCount: premiumimg.length,
          ),
        ],
      ),
    );
  }

  Container rectanglecategory(BuildContext context, List<String> sale,
      List<String> saleList1, List<String> saleList2) {
    return Container(
      height: MediaQuery.of(context).size.height * .2,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.red)),
        color: Colors.white,
      ),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * .2,
                    width: MediaQuery.of(context).size.width * .32,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * .12,
                    width: MediaQuery.of(context).size.width * .32,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(5),
                        ),
                        color: Colors.white,
                        image: DecorationImage(
                            image: NetworkImage(sale[index]),
                            fit: BoxFit.fill)),
                  ),
                  Positioned(
                    bottom: 13,
                    left: 19,
                    child: Container(
                      child: Column(
                        children: [
                          Center(child: Text(saleList1[index])),
                          SizedBox(
                            height: 2,
                          ),
                          Center(
                            child: Text(
                              saleList2[index],
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            VerticalDivider(
              thickness: 1,
            )
          ],
        ),
        itemCount: sale.length,
      ),
    );
  }

  Container Category(
      BuildContext context, List<String> circular, List<String> category) {
    return Container(
      width: MediaQuery.of(context).size.width * 1,
      height: MediaQuery.of(context).size.height * .1,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage(
                      circular[index],
                    ),
                    radius: 32,
                  ),
                  Text(category[index]),
                ],
              ),
            ),
            SizedBox(
              width: 20,
            ),
          ],
        ),
        itemCount: 7,
      ),
    );
  }

  CarouselSlider carousal(
      GlobalKey<CarouselSliderState> _sliderKey, List<String> slider) {
    return CarouselSlider.builder(
      key: _sliderKey,
      itemCount: slider.length,
      itemBuilder: (context, index, realIndex) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * .2,
          width: MediaQuery.of(context).size.width * 1,
          child: Image.network(
            slider[index],
            fit: BoxFit.fitWidth,
          ),
        );
      },
      options: CarouselOptions(
          autoPlay: true,
          scrollDirection: Axis.horizontal,
          viewportFraction: 1),
    );
  }

  Container searchbar(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.05,
      width: MediaQuery.of(context).size.width * 0.76,
      color: const Color.fromARGB(15, 30, 28, 27),
      child: TextFormField(
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.search),
          enabledBorder: const OutlineInputBorder(
              borderSide:
                  BorderSide(color: Color.fromARGB(15, 0, 0, 0), width: 1)),
          suffixIcon: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                icon: const Icon(Icons.mic),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.camera_alt),
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }

  Container brandmall() {
    return Container(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text("Brand Mall"),
            Image.asset(
              "assets/images/on-button.png",
              height: 21,
            )
          ],
        ),
      ),
    );
  }
}

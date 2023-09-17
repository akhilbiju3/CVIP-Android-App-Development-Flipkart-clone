import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> categoryList = [
      "For You",
      "Fashion",
      "Appliances",
      "Mobiles",
      "Electronics",
      "Home",
      "Furniture",
      "Toys & Baby",
      "Personal Care",
      "Food & More",
      "Sports",
      "Flights",
      "Gift Cards",
      "Medicines"
    ];

    List<String> categoryImage = [
      "https://images.pexels.com/photos/264771/pexels-photo-264771.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/1148960/pexels-photo-1148960.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/6192127/pexels-photo-6192127.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/1092644/pexels-photo-1092644.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/356056/pexels-photo-356056.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/4050430/pexels-photo-4050430.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/1866149/pexels-photo-1866149.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/255514/pexels-photo-255514.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/9475427/pexels-photo-9475427.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/4393021/pexels-photo-4393021.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/1192027/pexels-photo-1192027.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/104826/aircraft-holiday-sun-tourism-104826.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/1229180/pexels-photo-1229180.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/159211/headache-pain-pills-medication-159211.jpeg?auto=compress&cs=tinysrgb&w=600"
    ];

    List<String> gridList = [
      "5g Mobiles",
      "Shirts",
      "Dresses",
      "Jeans",
      "Fashion",
      "Hair Care",
      " Food",
      "Trimmers",
      "Laptops"
    ];

    List<String> gridListimg = [
      "https://images.pexels.com/photos/1647976/pexels-photo-1647976.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/297933/pexels-photo-297933.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/996329/pexels-photo-996329.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/603022/pexels-photo-603022.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/2043590/pexels-photo-2043590.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/973402/pexels-photo-973402.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/17609/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/11333875/pexels-photo-11333875.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/2528118/pexels-photo-2528118.jpeg?auto=compress&cs=tinysrgb&w=600"
    ];

    List<String> gridListimg1 = [
      "assets/images/icons8-coin-48.png",
      "assets/images/icons8-cash-48.png",
      "assets/images/icons8-fire-50.png",
      "assets/images/icons8-game-48.png",
      "assets/images/icons8-group-48.png",
      "assets/images/icons8-live-48.png",
    ];

    List<String> gridList1 = [
      "Supercoin",
      "Money+",
      "FireDrops",
      "Game",
      "Group Buy",
      "Live",
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text("All Categories", style: TextStyle(color: Colors.black)),
        actions: [
          Icon(Icons.search),
          SizedBox(
            width: 20,
          ),
          Icon(Icons.mic)
        ],
      ),
      body: Row(
        children: [
          Container(
            width: 100,
            color: const Color.fromARGB(255, 230, 228, 228),
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(categoryImage[index]),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(categoryList[index]),
                    Divider(
                      thickness: 1,
                    )
                  ],
                );
              },
              itemCount: categoryList.length,
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              height: MediaQuery.of(context).size.height * 1,
              width: MediaQuery.of(context).size.width * .756,
              color: Colors.white,
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Popular Stores",
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        mainAxisSpacing: 1,
                        crossAxisSpacing: 1),
                    itemBuilder: (context, index) => Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage(gridListimg[index]),
                          radius: 35,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(gridList[index]),
                      ],
                    ),
                    itemCount: gridList.length,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "More on Flipkart",
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        mainAxisSpacing: 1,
                        crossAxisSpacing: 1),
                    itemBuilder: (context, index) => Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          backgroundImage: AssetImage(gridListimg1[index]),
                          radius: 35,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(gridList1[index]),
                      ],
                    ),
                    itemCount: gridList1.length,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

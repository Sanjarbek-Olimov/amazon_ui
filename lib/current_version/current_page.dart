import 'package:flutter/material.dart';

class CurrentVersion extends StatefulWidget {
  static const String id = "current_page";

  const CurrentVersion({Key? key}) : super(key: key);

  @override
  _CurrentVersionState createState() => _CurrentVersionState();
}

class _CurrentVersionState extends State<CurrentVersion> {
  List<String> categoryImage = [
    "assets/images/current/Oculus.jpg",
    "assets/images/current/Laptops.jpg",
    "assets/images/current/Women.jpg",
    "assets/images/current/Beauty.jpg",
  ];

  List<String> categoryName = [
    "Oculus",
    "Shop Laptops\n& Tablets",
    "Women's Fashion",
    "Beauty\nPicks"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.mic_none,
                color: Colors.black,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.shopping_cart_outlined,
                color: Colors.black,
              )),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.04,
          )
        ],
        title: Image(
          height: MediaQuery.of(context).size.height * 0.04,
          image: const AssetImage("assets/images/current/amazon_logo.png"),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[
                  Colors.tealAccent.shade400.withOpacity(0.5),
                  Colors.tealAccent.shade200.withOpacity(0.7),
                  Colors.tealAccent.shade100.withOpacity(0.9),
                ]),
          ),
        ),
        bottom: PreferredSize(
          preferredSize:
              Size.fromHeight(MediaQuery.of(context).size.height * 0.08),
          child: const Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                  isCollapsed: true,
                  contentPadding: EdgeInsets.zero,
                  border: OutlineInputBorder(borderSide: BorderSide.none),
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "What are you looking for?",
                  prefixIcon: Icon(Icons.search, color: Colors.black),
                  suffixIcon:
                      Icon(Icons.camera_alt_outlined, color: Colors.black)),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // #location
            Container(
              color: Colors.tealAccent.shade200.withOpacity(0.4),
              height: MediaQuery.of(context).size.height * 0.06,
              child: Row(
                children: const [
                  Expanded(
                    child: Icon(
                      Icons.location_on_outlined,
                      color: Colors.black,
                    ),
                    flex: 1,
                  ),
                  Expanded(
                    child: Text(
                      "Deliver to Uzbekistan",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                    flex: 8,
                  )
                ],
              ),
            ),
            // #ship_product
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.08),
                  alignment: Alignment.topCenter,
                  height: MediaQuery.of(context).size.width * 1.05,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.center,
                          end: Alignment.bottomCenter,
                          colors: [
                        Colors.blue.withOpacity(0.8),
                        Colors.blue.withOpacity(0.8),
                        Colors.grey.withOpacity(0.3),
                        Colors.grey.withOpacity(0.2),
                      ])),
                  child: Row(
                    children: [
                      const Expanded(
                          child: FittedBox(
                        child: Text(
                          "We ship over\n45 million products\naround the world",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      )),
                      Expanded(
                          child: Image.asset(
                        "assets/images/current/globus.png",
                        height: MediaQuery.of(context).size.width * 0.36,
                      ))
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.width * 0.58,
                      bottom: MediaQuery.of(context).size.width * 0.02,
                      left: MediaQuery.of(context).size.width * 0.01,
                      right: MediaQuery.of(context).size.width * 0.01,
                  ),
                  height: MediaQuery.of(context).size.width * 1.05,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: categoryImage.length,
                      itemBuilder: (context, index) {
                        return _categories(
                            categoryName[index], categoryImage[index]);
                      }),
                )
              ],
            ),

            // #Women's_sneakers
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.05,
                vertical: MediaQuery.of(context).size.height * 0.02,
              ),
              child: const Text(
                "Women's Fashion Sneakers",
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.w300),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.05,
                  right: MediaQuery.of(context).size.width * 0.05,),
              child: GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
              ),
              itemCount: 4,
              itemBuilder: (context, index) {
                return Image.asset(
                  "assets/images/current/sneakers_${index + 1}.jpg",
                  fit: BoxFit.fill,
                );
              })

            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.05,
                vertical: MediaQuery.of(context).size.width * 0.03,
              ),
              child: GestureDetector(
                onTap: (){},
                child: const Text(
                  "See more",
                  style: TextStyle(fontSize: 16, color:Color.fromRGBO(12, 129, 151, 1), fontWeight: FontWeight.w300),
                ),
              ),
            ),
            const Divider(thickness: 5),

            // #Popular_camera
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.05,
                vertical: MediaQuery.of(context).size.height * 0.02,
              ),
              child: const Text(
                "Popular Gifts in Camera",
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.w300),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.05,
                  right: MediaQuery.of(context).size.width * 0.05,),
                child: GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 8,
                      crossAxisSpacing: 8,
                    ),
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return Image.asset(
                        "assets/images/current/cam_${index + 1}.jpg",
                        fit: BoxFit.fill,
                      );
                    })

            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.05,
                vertical: MediaQuery.of(context).size.width * 0.03,
              ),
              child: GestureDetector(
                onTap: (){},
                child: const Text(
                  "See more",
                  style: TextStyle(fontSize: 16, color:Color.fromRGBO(12, 129, 151, 1), fontWeight: FontWeight.w300),
                ),
              ),
            ),
            const Divider(thickness: 5),

            // #tablets
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.05,
                vertical: MediaQuery.of(context).size.height * 0.02,
              ),
              child: const Text(
                "Tablets under \$100",
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.w300),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.05,
                  right: MediaQuery.of(context).size.width * 0.05,),
                child: GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 8,
                      crossAxisSpacing: 8,
                    ),
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return Image.asset(
                        "assets/images/current/lapTab_${index + 1}.jpg",
                        fit: BoxFit.fill,
                      );
                    })

            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.05,
                vertical: MediaQuery.of(context).size.width * 0.03,
              ),
              child: GestureDetector(
                onTap: (){},
                child: const Text(
                  "See more",
                  style: TextStyle(fontSize: 16, color:Color.fromRGBO(12, 129, 151, 1), fontWeight: FontWeight.w300),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _categories(name, image) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.35,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        child: Column(
          children: [
            Expanded(
                flex: 1,
                child: Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      name,
                      style:
                          const TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
                    ))),
            Expanded(
                flex: 3,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(5),
                        bottomRight: Radius.circular(5),
                      ),
                      image: DecorationImage(
                          image: AssetImage(image), fit: BoxFit.cover)),
                ))
          ],
        ),
      ),
    );
  }
}

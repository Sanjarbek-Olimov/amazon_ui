import 'package:flutter/material.dart';

class HomePage2 extends StatefulWidget {
  static const String id = "home_page_2";

  const HomePage2({Key? key}) : super(key: key);

  @override
  _HomePage2State createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color.fromRGBO(12, 129, 151, 1),
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
          ),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.mic)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart)),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.04,
            )
          ],
          title: Image(
            height: MediaQuery.of(context).size.height * 0.12,
            image: const AssetImage("assets/images/amazon_logo.png"),
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
                    prefixIcon: Icon(
                      Icons.search,
                      color: Color.fromRGBO(12, 129, 151, 1),
                    ),
                    suffixIcon: Icon(
                      Icons.camera_alt,
                      color: Color.fromRGBO(12, 129, 151, 1),
                    )),
              ),
            ),
          )),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // #location
            Container(
              color: Colors.blueGrey,
              height: MediaQuery.of(context).size.height * 0.06,
              child: Row(
                children: const [
                  Expanded(
                    child: Icon(
                      Icons.location_on,
                      color: Colors.white,
                    ),
                    flex: 1,
                  ),
                  Expanded(
                    child: Text(
                      "Deliver to Korea, Republic of",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    flex: 8,
                  )
                ],
              ),
            ),
            // #ship_product
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.15,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/image_1.jpeg"),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(60),
                              bottomRight: Radius.circular(60))),
                    ),
                    flex: 4,
                  ),
                  Expanded(
                    child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal:
                            MediaQuery.of(context).size.width * 0.04),
                        alignment: Alignment.center,
                        child: const Text(
                          "We ship 45 million products",
                          style: TextStyle(fontSize: 16),
                        )),
                    flex: 3,
                  ),
                ],
              ),
            ),
            const Divider(thickness: 8,),
            // #sign_in_button
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.05,
                vertical: MediaQuery.of(context).size.height * 0.02,
              ),
              height: MediaQuery.of(context).size.height * 0.20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Sign in for the best experience",
                    style: TextStyle(fontSize: 20),
                  ),
                  MaterialButton(
                    elevation: 0,
                    height: MediaQuery.of(context).size.height * 0.058,
                    onPressed: () {},
                    color: const Color.fromRGBO(255, 152, 15, 1),
                    child: const Text(
                      "Sign in",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                    ),
                  ),
                  const Text(
                    "Create an account",
                    style:
                        TextStyle(fontSize: 20, color: Colors.lightBlueAccent),
                  ),
                ],
              ),
            ),
            const Divider(thickness: 8,),
            // #deal_of_the_day
            Container(
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.05,
                  vertical: MediaQuery.of(context).size.height * 0.02,
                ),
                height: MediaQuery.of(context).size.height * 0.42,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Deal of the Day",
                      style: TextStyle(fontSize: 23),
                    ),
                    Image.asset(
                      "assets/images/item_7.jpeg",
                      height: MediaQuery.of(context).size.width * 0.55,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "Up to 31% off APC UPS Battery Back\n\$10.99 - \$79.9",
                      style: TextStyle(
                          fontSize: 16,
                          height: 1.5,
                          color: Colors.grey.shade800),
                    ),
                  ],
                )),
            const Divider(thickness: 8,),
            // #best_sellers
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.05,
                vertical: MediaQuery.of(context).size.height * 0.02,
              ),
              child: const Text(
                "Best sellers in Electronics",
                style: TextStyle(fontSize: 23),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.05,
                  right: MediaQuery.of(context).size.width * 0.05,
                  bottom: MediaQuery.of(context).size.height * 0.02),
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
                      "assets/images/item_${index + 1}.jpeg",
                      fit: BoxFit.cover,
                    );
                  }),
            ),
            const Divider(thickness: 8,),
            // #top_products
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.05,
                vertical: MediaQuery.of(context).size.height * 0.02,
              ),
              child: const Text(
                "Top products in Camera",
                style: TextStyle(fontSize: 23),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.05,
                  right: MediaQuery.of(context).size.width * 0.05,
                  bottom: MediaQuery.of(context).size.height * 0.02),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Image.asset("assets/images/item_7.jpeg", height: MediaQuery.of(context).size.width*0.5, fit: BoxFit.cover,),
                  SizedBox(height: 8,),
                  GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 8,
                        crossAxisSpacing: 8,
                      ),
                      itemCount: 2,
                      itemBuilder: (context, index) {
                          return Image.asset(
                          "assets/images/item_${index + 2}.jpeg",
                          fit: BoxFit.cover,
                        );
                      }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

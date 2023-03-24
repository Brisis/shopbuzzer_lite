import 'package:flutter/material.dart';
import 'package:shopbuzzer/helpers/constants.dart';
import 'package:story_view/story_view.dart';

class ProductView extends StatefulWidget {
  const ProductView({super.key});

  @override
  State<ProductView> createState() => _ProductViewState();
}

class _ProductViewState extends State<ProductView> {
  final StoryController controller = StoryController();
  String productName = "Brown Sunflower, Ladies Hats";

  List<String> storyImages = [
    "https://img.joomcdn.net/c35877d2af42878b525d42ed49c349e27f67ed56_original.jpeg",
    "https://img.joomcdn.net/cc983b9fa27f287d5057d0c1e177e58e3084e3a3_original.jpeg",
    "https://i.gifer.com/8wFp.gif",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: kBackgroundColor,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back,
            color: kBlackColor,
            size: kIconSize,
          ),
        ),
        title: Text(
          productName,
          style: const TextStyle(
            fontSize: kBigTextSize,
            color: kBlackColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            Container(
              height: 400,
              child: StoryView(
                controller: controller,
                storyItems: [
                  for (int i = 0; i < storyImages.length; i++)
                    StoryItem.inlineImage(
                      url: storyImages[i],
                      controller: controller,
                      caption: Text(
                        productName,
                        style: const TextStyle(
                          color: Colors.white,
                          backgroundColor: Colors.black54,
                          fontSize: 17,
                        ),
                      ),
                    )
                ],
                onStoryShow: (s) {
                  print("Showing a story");
                },
                onComplete: () {
                  print("Completed a cycle");
                },
                progressPosition: ProgressPosition.top,
                repeat: false,
                inline: true,
              ),
            ),
            Material(
              child: InkWell(
                onTap: () {
                  // Navigator.of(context).push(
                  //     MaterialPageRoute(builder: (context) => MoreStories()));
                },
                child: Container(
                  decoration: const BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(8),
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: const Center(
                    child: Text(
                      "Purchase Product",
                      style: TextStyle(
                        fontSize: kMediumTextSize,
                        color: kWhiteColor,
                      ),
                    ),
                  ),
                ),
              ),
            ),

            verticalSpace(height: 30),
            const Text(
              "About",
              style: TextStyle(
                fontSize: kBigTextSize,
                color: kBlackColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            verticalSpace(),
            const Text(
              "The product description for this grill speaks to the target market (me!) by expressing how its main features address my need for a grill that can squeeze into a tiny balcony space.",
              style: TextStyle(fontSize: kMediumTextSize),
            ),
            verticalSpace(height: 30),
            const Text(
              "Seller Information",
              style: TextStyle(
                fontSize: kBigTextSize,
                color: kBlackColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            verticalSpace(),
            Container(
              // height: 80,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: kWhiteColor,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CircleAvatar(
                    backgroundColor: kBlackColor,
                    maxRadius: 20,
                    backgroundImage: AssetImage("assets/images/edg.png"),
                  ),
                  horizontalSpace(),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Edgars ZW",
                          style: TextStyle(
                            fontSize: kMediumTextSize,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        verticalSpace(),
                        const Text(
                          "Click to view profile",
                          style: TextStyle(
                            fontSize: kMediumTextSize,
                            color: kBlackFaded,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  horizontalSpace(),
                  const Text(
                    "5 mon",
                    style: TextStyle(
                      fontSize: kMediumTextSize,
                      color: kBlackFaded,
                    ),
                  ),
                ],
              ),
            ),
            verticalSpace(height: 30),
            const Text(
              "Product Reviews",
              style: TextStyle(
                fontSize: kBigTextSize,
                color: kBlackColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            verticalSpace(height: 15),
            // Row(
            //   children: [
            //     Expanded(
            //       child: ElevatedButton(
            //         onPressed: () {},
            //         style: ButtonStyle(
            //           padding:
            //               MaterialStateProperty.all(const EdgeInsets.all(10.0)),
            //           backgroundColor: MaterialStateProperty.all(kPrimaryColor),
            //           shape: MaterialStateProperty.all(
            //             RoundedRectangleBorder(
            //               borderRadius: BorderRadius.circular(10),
            //             ),
            //           ),
            //         ),
            //         child: const Text(
            //           "Purchase Product",
            //           style: TextStyle(
            //             fontSize: kMidHeaderTextSize,
            //             color: Colors.white,
            //           ),
            //         ),
            //       ),
            //     )
            //   ],
            // ),
            // verticalSpace(height: 30),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              25,
            ),
          ),
          child: const Icon(
            Icons.add_shopping_cart,
            size: kIconSize,
            color: kWhiteColor,
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:shopbuzzer/helpers/constants.dart';
import 'package:shopbuzzer/views/product/product_view.dart';
import 'package:shopbuzzer/widgets/mini_product_card.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  TextEditingController searchController = TextEditingController();
  bool showClear = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 40,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Center(
            child: TextField(
              controller: searchController,
              onSubmitted: (value) {
                print(value);
              },
              onChanged: (value) {
                setState(() {
                  showClear = true;
                });
              },
              textInputAction: TextInputAction.search,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                suffixIcon: showClear
                    ? IconButton(
                        splashRadius: 1.0,
                        icon: const Icon(Icons.clear),
                        onPressed: () {
                          searchController.text = "";
                          setState(() {
                            showClear = false;
                          });
                        },
                      )
                    : null,
                hintText: 'Search...',
                border: InputBorder.none,
              ),
            ),
          ),
        ),
        verticalSpace(height: 15.0),
        Expanded(
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 15,
              crossAxisSpacing: 10,
              crossAxisCount: 2,
              childAspectRatio: 0.75,
            ),
            itemCount: 8,
            itemBuilder: (BuildContext context, int index) {
              return const MiniProductCard();
            },
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

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
    return ListView(
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
      ],
    );
  }
}

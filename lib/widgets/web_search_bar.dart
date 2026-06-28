import 'package:flutter/material.dart';

import '../core/theme/app_colors.dart';

class WebSearchBar extends StatelessWidget {
  const WebSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.06,
      width: MediaQuery.of(context).size.width * 0.25,
      padding: const .all(10),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: AppColors.dividerColor),
        ),
      ),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: AppColors.searchBarColor,
          prefixIcon: const Padding(
            padding: .symmetric(horizontal: 20.0),
            child: Icon(Icons.search, size: 20),
          ),
          hintStyle: const TextStyle(fontSize: 14),
          hintText: 'Search or start new chat',
          border: OutlineInputBorder(
            borderRadius: .circular(20.0),
            borderSide: const BorderSide(
              width: 0,
              style: .none,
            ),
          ),
          contentPadding: const .all(10),
        ),
      ),
    );
  }
}

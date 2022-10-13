import 'package:flutter/material.dart';

class ReusableSearchBar extends StatelessWidget {
  const ReusableSearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0xffF2F3F2),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
        prefixIcon: const Icon(Icons.search,color: Colors.black38,),
        labelText: 'Search Here',
        labelStyle: const TextStyle(color: Colors.black38,fontSize: 12,),

      ),
    );
  }
}

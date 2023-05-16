import 'package:flutter/material.dart';
import 'package:food_delivery/widgets/big_text.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({Key? key}) : super(key: key);
  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      color: Colors.redAccent,
      child: PageView.builder(
          controller: pageController,
          itemCount: 5,
          itemBuilder: (context, position) {
            return _buildPageItem(position);
          }),
    );
  }

  Widget _buildPageItem(int index) {
    return Stack(children: [
      Container(
        height: 220,
        margin: const EdgeInsets.only(right: 5, left: 5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: index.isEven ? Colors.red : Colors.black,
            image: const DecorationImage(
                image: AssetImage('assets/image/1.jpg'), fit: BoxFit.cover)),
      ),
      Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 130,
            margin: const EdgeInsets.only(right: 30, left: 30, bottom: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
            ),
            child: Container(
            padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
            child: Column(
                      children: [
                        BigText(text: "Neplease food")
                      ],
            ),
          ),
        ),
          )
          
          
    ]);
  }
}

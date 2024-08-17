import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/cards_page_view.dart';
import 'package:responsive_dashboard/widgets/dots_indictor.dart';

class MyCardsSection extends StatefulWidget {
  const MyCardsSection({super.key});

  @override
  State<MyCardsSection> createState() => _MyCardsSectionState();
}

class _MyCardsSectionState extends State<MyCardsSection> {
  late PageController pageController;
  int currentPageIndex = 0;
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currentPageIndex = pageController.page!.round();
      setState(() {});
    });

    // TODO: implement initState
    super.initState();
  }

  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 420,
          child: Text(
            'My Cards',
            style: AppStyles.semiBold20(context),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        CardsPageView(pageController: pageController),
        const SizedBox(
          height: 20,
        ),
        DotsIndictor(
          currentPageIndex: currentPageIndex,
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/cards_page_view.dart';
import 'package:responsive_dashboard/widgets/custom_dot.dart';

import 'package:responsive_dashboard/widgets/custom_drawer.dart';
import 'package:responsive_dashboard/widgets/dots_indictor.dart';

import 'package:responsive_dashboard/widgets/my_card.dart';
import 'package:responsive_dashboard/widgets/my_cards_section.dart';

import 'all_expenses_and_quick_invoice_section.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(children: [
      Expanded(child: CustomDrawer()),
      SizedBox(
        width: 32,
      ),
      Expanded(flex: 2, child: AllExpensesAndQuickInvoiceSection()),
      SizedBox(
        width: 24,
      ),
      Expanded(child: MyCardsSection())
    ]);
  }
}

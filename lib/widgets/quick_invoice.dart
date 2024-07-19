import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_back_ground_container.dart';

import 'package:responsive_dashboard/widgets/latest_transaction.dart';

import 'package:responsive_dashboard/widgets/quick_invoice_form.dart';
import 'package:responsive_dashboard/widgets/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackGroundContainer(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuickInvoiceHeader(),
        LatestTransaction(),
        Divider(
          height: 48,
        ),
        QuickInvoiceForm()
      ],
    ));
  }
}

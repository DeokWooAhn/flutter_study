import 'package:fast_app_base/screen/main/tab/stock/stocks_dummy.dart';
import 'package:fast_app_base/screen/main/tab/stock/w_stock_item.dart';
import 'package:flutter/material.dart';

class InterestStock extends StatelessWidget {
  const InterestStock({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...myInsertsStocks.map((element) => StockItem(element)).toList(),
      ],
    );
  }
}

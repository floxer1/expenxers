import 'package:expenxers/data/userInfo.dart';
//import 'package:expenxers/data/userinfo.dart';

import 'package:expenxers/utils/constants.dart';
import 'package:expenxers/utils/widget/income_expense_card.dart';
import 'package:expenxers/utils/widget/transaction_item_title.dart';
import 'package:flutter/material.dart';
//import 'package:expenxers/data/';

class HomeScreenTab extends StatelessWidget {
  const HomeScreenTab({Key? key}) : super(key: key);
  
 

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(defaultSpacing),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: defaultSpacing * 4,
            ),
            ListTile(
              title: Text("Hey! ${userdata.name}!"),
              leading: ClipRRect(
                  borderRadius:
                      const BorderRadius.all(Radius.circular(defaultRadius)),
                  child: Image.asset("lib/assets/images/avatar.jpeg")),
              trailing: Image.asset("lib/assets/icons/bell.png"),
            ),
            const SizedBox(
              height: defaultSpacing,
            ),
            Center(
              child: Column(
                children: [
                  Text(
                    "\CFA ${userdata.totalBalance}",
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontSize: fontSizeHeading, fontWeight: FontWeight.w800),
                  ),
                  const SizedBox(
                    height: defaultSpacing / 2,
                  ),
                  Text("Total balance",
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1
                          ?.copyWith(color: fontDark))
                ],
              ),
            ),
            const SizedBox(
              height: defaultSpacing * 2,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                    child: IncomeExpenseCard(
                        expenseData: ExpenseData(
                            "Income",
                            "\CFA${userdata.inflow}",
                            Icons.arrow_upward_rounded))),
                const SizedBox(
                  width: defaultSpacing,
                ),
                Expanded(
                    child: IncomeExpenseCard(
                        expenseData: ExpenseData(
                            "Expense",
                            "-\CFA${userdata.outflow}",
                            Icons.arrow_downward_rounded))),
              ],
            ),
            const SizedBox(
              height: defaultSpacing * 2,
            ),
            Text("Recent Transactions",
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    ?.copyWith(fontWeight: FontWeight.w700)),
            const SizedBox(
              height: defaultSpacing,
            ),
            const Text(
              "Today",
              style: TextStyle(color: fontDark),
            ),
            ...userdata.transactions.map((transaction) => TransactionItemTile(transaction:transaction)),
                        const SizedBox(
              height: defaultSpacing,
            ),
            const Text(
              "Today",
              style: TextStyle(color: fontDark),
            ),
            ...transactions2.map((transaction) => TransactionItemTile(transaction:transaction)),
          ],
        ),
      ),
    );
  }
}

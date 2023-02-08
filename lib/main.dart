import 'package:flutter/material.dart';
import 'package:toonflix/Widgets/button.dart';
import 'package:toonflix/Widgets/currency_card.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF181818),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 160,
                  height: 70,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          "Hey Selena",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 37,
                              fontWeight: FontWeight.bold),
                        ),
                        Text("Welcome Back!",
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.5),
                              fontSize: 16,
                            )),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Text(
                  "Total Balance",
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white.withOpacity(0.8),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  "\$5 194 482",
                  style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    button(
                      text: "transfer",
                      bgcolor: Colors.amber,
                      textcolor: Colors.black,
                    ),
                    button(
                      text: "Request",
                      bgcolor: Color(0xff1f2123),
                      textcolor: Colors.white,
                    )
                  ],
                ),
                const SizedBox(
                  height: 80,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text(
                      "Wallet",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "view all",
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 18,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                currencyCard(
                  name: "Euro",
                  money: "EUR",
                  amount: "6 425",
                  moneyIcon: Icons.euro_rounded,
                  CardNum: 1,
                ),
                currencyCard(
                  name: "Bitcoin",
                  money: "BIT",
                  amount: "7 225",
                  moneyIcon: Icons.currency_bitcoin_rounded,
                  CardNum: 2,
                  IsWhiteCard: true,
                ),
                currencyCard(
                  name: "Dollar",
                  money: "USD",
                  amount: "9919",
                  moneyIcon: Icons.attach_money_rounded,
                  CardNum: 3,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

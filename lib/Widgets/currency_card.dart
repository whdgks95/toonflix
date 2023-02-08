import 'package:flutter/material.dart';

class currencyCard extends StatelessWidget {
  @override
  final String name, money, amount;
  final IconData moneyIcon;
  bool IsWhiteCard;
  final int CardNum;
  final Color myblack = const Color(0xff1f2123);
  currencyCard({
    super.key,
    required this.name,
    required this.money,
    required this.amount,
    required this.moneyIcon,
    required this.CardNum,
    this.IsWhiteCard = false,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Transform.translate(
      offset: Offset(0, (CardNum - 1) * (-20)),
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          color: IsWhiteCard ? Colors.white : myblack,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      color: IsWhiteCard ? myblack : Colors.white,
                      fontSize: 32,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        amount,
                        style: TextStyle(
                          color: IsWhiteCard ? myblack : Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        money,
                        style: TextStyle(
                          color: IsWhiteCard
                              ? myblack.withOpacity(0.6)
                              : Colors.white.withOpacity(0.6),
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Transform.scale(
                scale: 2.2,
                child: Transform.translate(
                  offset: const Offset(-5, 12),
                  child: Icon(
                    moneyIcon,
                    color: IsWhiteCard ? myblack : Colors.white,
                    size: 88,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

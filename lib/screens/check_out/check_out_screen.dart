import 'package:assignment_bike_rent/screens/check_out/widgets/date_tile.dart';
import 'package:assignment_bike_rent/widgets/pop_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CheckOutScreen extends StatelessWidget {
  CheckOutScreen({super.key});

  List<String> detailsTitle = [
    'Days',
    'Rent',
    'Additional Items',
    'Coupon Discount',
  ];
  List<String> detailsPrice = [
    '4',
    '5996',
    '6400',
    '396',
  ];

  Widget detailsText(String title) {
    return Text(
      title,
      style: const TextStyle(fontWeight: FontWeight.w300, fontSize: 18),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        children: [
          const PopBar(title: 'Check Out'),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  padding: const EdgeInsets.all(10.0),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: const Color(0xffC4C4C4),
                      borderRadius: BorderRadius.circular(30.0)),
                  child: const Column(
                    children: [
                      DateTile(title: 'Start Date', subtitle: '09-06-21'),
                      DateTile(title: 'End Date', subtitle: '12-06-2021')
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 40),
                  width: double.infinity,
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(color: Colors.teal, width: 1.2)),
                  child: const Text(
                    'Apply coupon',
                    style: TextStyle(color: Colors.teal, fontSize: 18),
                  ),
                ),
                const Text(
                  'Details',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                const Divider(
                  height: 0.0,
                  color: Colors.teal,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: List.generate(detailsTitle.length,
                                (index) => detailsText(detailsTitle[index]))
                            .toList(),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: List.generate(
                            detailsTitle.length,
                            (index) => Row(
                                  children: [
                                    const Icon(
                                      Icons.currency_rupee,
                                      size: 20,
                                      weight: 1,
                                      grade: 1,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    detailsText(detailsPrice[index]),
                                  ],
                                )).toList(),
                      ),
                    )
                  ],
                ),
                const Divider(
                  color: Colors.teal,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.currency_rupee,
                          size: 20,
                          weight: 1,
                          grade: 1,
                        ),
                        Text(
                          '12000',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  height: 70,
                  margin: const EdgeInsets.symmetric(vertical: 10.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      'PAY',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 27,
                          color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0))),
                  ),
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}

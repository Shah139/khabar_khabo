import 'package:flutter/material.dart';
import 'package:khabar_khabo/models/restaurent.dart';
import 'package:provider/provider.dart';

class MyReceipt extends StatelessWidget {
  const MyReceipt({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25,right: 25,bottom: 25,top: 50),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Thanks for ordering!"),
            const SizedBox(height: 25,),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Theme.of(context).colorScheme.secondary),
                borderRadius: BorderRadius.circular(8),
              ),
              padding: const EdgeInsets.all(25),
              child: Consumer<Restaurent>(
              builder: (contenxt,restaurent,child) => Text(restaurent.displayCartReceipt()),
              ),
            ),
            const SizedBox(height: 25),
            const Text("wait for 30 mins for delivery")
          ],
        ),
      ),
      );
  }
}
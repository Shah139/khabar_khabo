import 'package:flutter/material.dart';
import 'package:khabar_khabo/components/my_button.dart';
import 'package:khabar_khabo/components/my_cart_tile.dart';
import 'package:khabar_khabo/models/cart_item.dart';
import 'package:khabar_khabo/models/restaurent.dart';
import 'package:khabar_khabo/pages/deliverey_progress_page.dart';
import 'package:provider/provider.dart';
//import 'package:bkash/bkash.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});


  double calculateTotalAmount(List<CartItem> cart) {
    return cart.fold(0.0, (total, item) {
      double itemTotal = item.food.price * item.quantity;
      double addonsTotal = item.selectedAddons.fold(
        0.0,
        (sum, addon) => sum + (addon.price * item.quantity),
      );
      return total + itemTotal + addonsTotal;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurent>(builder: (context,restaurent,child){
      final userCart = restaurent.cart;

      return Scaffold(
          appBar: AppBar(
            title:const Text("cart"),
            backgroundColor: Colors.transparent,
            foregroundColor: Theme.of(context).colorScheme.inversePrimary,
            actions: [
              IconButton(
                onPressed: (){
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text("Are you sure to clear the cart?"),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: const Text("Cancel"),
                        ),
                        TextButton(
                          onPressed: (){
                            Navigator.pop(context);
                            restaurent.clearCart(); 
                          },
                          child: const Text("Yes"),
                        )
                      ],
                    ),
                  );
                },
                 icon: const Icon(Icons.delete),
                )
            ],
          ),
          body: Column(
            children: [
              Expanded(
              child: userCart.isEmpty
                  ? const Center(child: Text("Cart is empty"))
                  : ListView.builder(
                      itemCount: userCart.length,
                      itemBuilder: (context, index) {
                        final cartItem = userCart[index];
                        return ConstrainedBox(
                          constraints: BoxConstraints(
                            maxWidth: MediaQuery.of(context).size.width,
                          ),
                          child: MyCartTile(cartItem: cartItem),
                        );
                      },
                    ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                 MyButton(
                    text: "Pay Here", 
                    onTap: () async { 
                    // await _bkashmethod(restaurent, context);
                    Navigator.push(
                      context, 
                      MaterialPageRoute(builder: (context) => DelivereyProgressPage(),
                       )
              
                      );


                   }
                ),
                  const SizedBox(height: 25),
                ],
          ),
      ),
            ],
          ),
      );
    });
  }

 /* Future<void> _bkashmethod(Restaurent restaurent, BuildContext context) async {
    final bkash = Bkash(
     logResponse: true,
      bkashCredentials: BkashCredentials(
        username: 'username', 
        password: 'password', 
        appKey: 'appKey', 
        appSecret: 'appSecret',
        isSandbox: true,
      )
                       );
    
                    final double amount = calculateTotalAmount(restaurent.cart);
    
                    try {
    final response = await bkash.pay(
     context: context,
      amount: amount,
     merchantInvoiceNumber: 'invoice_${DateTime.now().millisecondsSinceEpoch}'
     );
                    } on BkashFailure catch(e) {
                      // Show error message
                      ScaffoldMessenger.of(context).showSnackBar(
                     SnackBar(content: Text('Payment failed: ${e.message}'))
                     );
                    print(e.message);
                    }
  } */
}
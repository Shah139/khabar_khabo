import 'package:collection/collection.dart';
import 'package:intl/intl.dart';
import 'package:khabar_khabo/models/cart_item.dart';

import 'food.dart';
import 'package:flutter/material.dart';

class Restaurent extends ChangeNotifier{
  final List<Food> _menu = [
    Food(
      name: "Chicken Burger", 
      description: "A juicy, seasoned chicken patty served with fresh lettuce, tomatoes, and a flavorful sauce in a soft bun.", 
      imagePath: "lib/images/burger/image_1.png", 
      price: 100, 
      category: FoodCategory.burgers, 
      availableAddons: [
        Addon(name: "Extra toppin", price: 20),
        Addon(name: "Sauce", price: 15),
        Addon(name: "Bacon", price: 10),
      ],
    ),
    Food(
      name: "Cheese Burger", 
      description: "A classic beef patty topped with melted cheese, crisp lettuce, and tangy pickles for a rich and satisfying bite.", 
      imagePath: "lib/images/burger/image_2.png", 
      price: 100, 
      category: FoodCategory.burgers, 
      availableAddons: [
        Addon(name: "Extra toppin", price: 20),
        Addon(name: "Sauce", price: 15),
        Addon(name: "Bacon", price: 10),
      ],
    ),
    Food(
      name: "Vegitable Burger", 
      description: "A wholesome veggie patty made from fresh vegetables and spices, paired with creamy sauces and crisp greens.", 
      imagePath: "lib/images/burger/image_3.jpg", 
      price: 60, 
      category: FoodCategory.burgers, 
      availableAddons: [
        Addon(name: "Extra toppin", price: 20),
        Addon(name: "Sauce", price: 15),
        Addon(name: "Bacon", price: 10),
      ],
    ),
    Food(
      name: "Redwar Burger", 
      description: "A Red delicious fusion of a juicy chicken patty, melted cheese, and a crispy vegetable patty, layered with fresh lettuce, tomatoes, and a savory sauce, all nestled in a toasted bun for the perfect bite!", 
      imagePath: "lib/images/burger/image_4.jpg", 
      price: 120, 
      category: FoodCategory.burgers, 
      availableAddons: [
        Addon(name: "Extra toppin", price: 20),
        Addon(name: "Sauce", price: 15),
        Addon(name: "Bacon", price: 10),
      ],
    ),
    Food(
      name: "Chicken Cheese Burger", 
      description: "A tender chicken patty topped with melted cheese, crunchy lettuce, and a savory sauce for a perfect blend of flavors.", 
      imagePath: "lib/images/burger/image_5.jpg", 
      price: 150, 
      category: FoodCategory.burgers, 
      availableAddons: [
        Addon(name: "Extra toppin", price: 20),
        Addon(name: "Sauce", price: 15),
        Addon(name: "Bacon", price: 10),
      ],
    ),

  Food(
  name: "Cookie 01", 
  description: "A classic chocolate chip cookie with a perfect balance of crunch and chewiness.", 
  imagePath: "lib/images/cookie/im_1.jpg", 
  price: 50, 
  category: FoodCategory.cookie, 
  availableAddons: [
    Addon(name: "Extra Chocolate", price: 20),
    Addon(name: "Caramel Drizzle", price: 15),
    Addon(name: "Nuts", price: 10),
  ],
),

Food(
  name: "Cookie 02", 
  description: "A deliciously soft oatmeal cookie packed with raisins and warm spices.", 
  imagePath: "lib/images/cookie/im_2.jpg", 
  price: 55, 
  category: FoodCategory.cookie, 
  availableAddons: [
    Addon(name: "Extra Raisins", price: 20),
    Addon(name: "Honey Drizzle", price: 15),
    Addon(name: "Coconut Flakes", price: 10),
  ],
),

Food(
  name: "Cookie 03", 
  description: "A rich and buttery peanut butter cookie with a soft and crumbly texture.", 
  imagePath: "lib/images/cookie/im_3.jpg", 
  price: 60, 
  category: FoodCategory.cookie, 
  availableAddons: [
    Addon(name: "Extra Peanut Butter", price: 20),
    Addon(name: "Chocolate Drizzle", price: 15),
    Addon(name: "Sea Salt", price: 10),
  ],
),

Food(
  name: "Cookie 04", 
  description: "A decadent double chocolate cookie with gooey chocolate chunks and a rich cocoa flavor.", 
  imagePath: "lib/images/cookie/im_4.jpg", 
  price: 65, 
  category: FoodCategory.cookie, 
  availableAddons: [
    Addon(name: "Extra Chocolate Chips", price: 20),
    Addon(name: "White Chocolate Drizzle", price: 15),
    Addon(name: "Marshmallows", price: 10),
  ],
),

Food(
  name: "Cookie 05", 
  description: "A soft and chewy red velvet cookie with a hint of cocoa and white chocolate chips.", 
  imagePath: "lib/images/cookie/im_5.jpg", 
  price: 70, 
  category: FoodCategory.cookie, 
  availableAddons: [
    Addon(name: "Cream Cheese Filling", price: 20),
    Addon(name: "Sprinkles", price: 15),
    Addon(name: "Crumble Topping", price: 10),
  ],
),

Food(
  name: "Cake 01", 
  description: "A warm and gooey chocolate cake with a rich molten center.", 
  imagePath: "lib/images/desserts/one.jpg", 
  price: 80, 
  category: FoodCategory.desserts, 
  availableAddons: [
    Addon(name: "Extra Chocolate Sauce", price: 20),
    Addon(name: "Vanilla Ice Cream", price: 15),
    Addon(name: "Whipped Cream", price: 10),
  ],
),

Food(
  name: "Cake 02", 
  description: "A creamy cheesecake topped with fresh strawberries and a sweet glaze.", 
  imagePath: "lib/images/desserts/two.jpg", 
  price: 85, 
  category: FoodCategory.desserts, 
  availableAddons: [
    Addon(name: "Extra Strawberries", price: 20),
    Addon(name: "Caramel Drizzle", price: 15),
    Addon(name: "Chocolate Shavings", price: 10),
  ],
),

Food(
  name: "Cake 03", 
  description: "A classic Italian dessert with layers of espresso-soaked sponge and mascarpone cream.", 
  imagePath: "lib/images/desserts/three.jpg", 
  price: 90, 
  category: FoodCategory.desserts, 
  availableAddons: [
    Addon(name: "Extra Cocoa Powder", price: 20),
    Addon(name: "Chocolate Chips", price: 15),
    Addon(name: "Whipped Cream", price: 10),
  ],
),

Food(
  name: "Cake 04", 
  description: "A warm and comforting apple pie with a flaky golden crust.", 
  imagePath: "lib/images/desserts/four.jpg", 
  price: 75, 
  category: FoodCategory.desserts, 
  availableAddons: [
    Addon(name: "Extra Cinnamon", price: 20),
    Addon(name: "Vanilla Ice Cream", price: 15),
    Addon(name: "Caramel Drizzle", price: 10),
  ],
),

Food(
  name: "Cake 05", 
  description: "A soft and fluffy muffin packed with fresh blueberries.", 
  imagePath: "lib/images/desserts/five.jpg", 
  price: 65, 
  category: FoodCategory.desserts, 
  availableAddons: [
    Addon(name: "Extra Blueberries", price: 20),
    Addon(name: "Almond Topping", price: 15),
    Addon(name: "Honey Drizzle", price: 10),
  ],
),

Food(
  name: "Salad 01", 
  description: "A fresh mix of cucumbers, tomatoes, olives, and feta cheese with a zesty dressing.", 
  imagePath: "lib/images/salads/img_1.jpg", 
  price: 65, 
  category: FoodCategory.salads, 
  availableAddons: [
    Addon(name: "Extra Feta", price: 20),
    Addon(name: "Black Olives", price: 15),
    Addon(name: "Grilled Chicken", price: 10),
  ],
),

Food(
  name: "Salad 02", 
  description: "A crisp medley of fresh lettuce, carrots, cucumbers, and tomatoes with a light vinaigrette.", 
  imagePath: "lib/images/salads/img_2.jpg", 
  price: 55, 
  category: FoodCategory.salads, 
  availableAddons: [
    Addon(name: "Avocado", price: 20),
    Addon(name: "Croutons", price: 15),
    Addon(name: "Boiled Egg", price: 10),
  ],
),

Food(
  name: "Salad 03", 
  description: "A flavorful salad with cabbage, almonds, sesame seeds, and an Asian-inspired dressing.", 
  imagePath: "lib/images/salads/img_3.jpg", 
  price: 70, 
  category: FoodCategory.salads, 
  availableAddons: [
    Addon(name: "Grilled Shrimp", price: 20),
    Addon(name: "Sesame Seeds", price: 15),
    Addon(name: "Extra Dressing", price: 10),
  ],
),

Food(
  name: "Salad 04", 
  description: "A protein-packed salad with quinoa, avocado, black beans, and a lime dressing.", 
  imagePath: "lib/images/salads/img_4.jpg", 
  price: 75, 
  category: FoodCategory.salads, 
  availableAddons: [
    Addon(name: "Grilled Tofu", price: 20),
    Addon(name: "Extra Avocado", price: 15),
    Addon(name: "Pumpkin Seeds", price: 10),
  ],
),

Food(
  name: "Salad 05", 
  description: "A fresh and crispy Caesar salad with parmesan and croutons.", 
  imagePath: "lib/images/salads/img_5.jpg", 
  price: 60, 
  category: FoodCategory.salads, 
  availableAddons: [
    Addon(name: "Grilled Chicken", price: 20),
    Addon(name: "Extra Parmesan", price: 15),
    Addon(name: "Bacon Bits", price: 10),
  ],
),

Food(
  name: "Drink 01", 
  description: "A refreshing blend of fresh lemons, sugar, and chilled water.", 
  imagePath: "lib/images/drink/i_1.jpg", 
  price: 40, 
  category: FoodCategory.drinks, 
  availableAddons: [
    Addon(name: "Extra Lemon", price: 10),
    Addon(name: "Mint Leaves", price: 15),
    Addon(name: "Ice Cubes", price: 5),
  ],
),

Food(
  name: "Drink 02", 
  description: "Chilled coffee brewed to perfection, served over ice with milk or cream.", 
  imagePath: "lib/images/drink/i_2.jpg", 
  price: 50, 
  category: FoodCategory.drinks, 
  availableAddons: [
    Addon(name: "Whipped Cream", price: 15),
    Addon(name: "Caramel Drizzle", price: 20),
    Addon(name: "Extra Espresso Shot", price: 25),
  ],
),

Food(
  name: "Drink 03", 
  description: "A creamy and delicious mango smoothie blended with yogurt and honey.", 
  imagePath: "lib/images/drink/i_3.jpg", 
  price: 60, 
  category: FoodCategory.drinks, 
  availableAddons: [
    Addon(name: "Chia Seeds", price: 10),
    Addon(name: "Extra Honey", price: 15),
    Addon(name: "Protein Powder", price: 20),
  ],
),

Food(
  name: "Drink 04", 
  description: "A rich and creamy milkshake made with fresh strawberries and vanilla ice cream.", 
  imagePath: "lib/images/drink/i_4.jpg", 
  price: 55, 
  category: FoodCategory.drinks, 
  availableAddons: [
    Addon(name: "Whipped Cream", price: 10),
    Addon(name: "Chocolate Drizzle", price: 15),
    Addon(name: "Extra Strawberries", price: 20),
  ],
),

Food(
  name: "Drink 05", 
  description: "A soothing and healthy green tea, served hot or iced.", 
  imagePath: "lib/images/drink/i_5.jpg", 
  price: 35, 
  category: FoodCategory.drinks, 
  availableAddons: [
    Addon(name: "Honey", price: 10),
    Addon(name: "Lemon Slice", price: 5),
    Addon(name: "Ginger", price: 15),
  ],
),



  ];
  final List<CartItem> _cart = [];
  String _deliveryAddress = 'CUET,Milkiway Galaxy';
  

  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;
  String get deliveryAddress => _deliveryAddress;

  
 


  //operations

  void addToCart(Food food,List<Addon> selectedAddons){
    CartItem ? cartItem = _cart.firstWhereOrNull((item){
      bool isSameFood = item.food == food;
      bool isSameAddons = ListEquality().equals(item.selectedAddons, selectedAddons);
      return isSameFood && isSameAddons;
    } );

    if(cartItem!= null){
      cartItem.quantity++;
    } else{
      _cart.add(
        CartItem(
          food: food, 
        selectedAddons: selectedAddons
        )
      );
    }
    notifyListeners();
  }

  void removeFromCart(CartItem cartItem){
    int cartIndex = _cart.indexOf(cartItem);
    if(cartIndex != -1){
      if(_cart[cartIndex].quantity > 1){
        _cart[cartIndex].quantity--;
      } else{
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }
  
  double getTotalPrice(){
    double total = 0.0;
    for(CartItem cartItem in _cart){
      double itemTotal = cartItem.food.price;

      for(Addon addon in cartItem.selectedAddons){
        itemTotal += addon.price;
      }

      total = itemTotal * cartItem.quantity;
    }
    return total;
  }

  int getTotalItemCount(){
    int totalItemCount = 0;
    for(CartItem cartItem in _cart){
      totalItemCount += cartItem.quantity;
    }
    return totalItemCount;
  }

  void clearCart(){
    _cart.clear();
    notifyListeners();
  }

  void updateDeliveryAddress(String newAddress){
    _deliveryAddress = newAddress;
    notifyListeners();
  }
  //generate a receipt
  String displayCartReceipt(){
    final receipt = StringBuffer();
    receipt.writeln("Heres's Your Receipt");
    receipt.writeln();

    String formattedDate = DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());
    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln("------------");

    for(final CartItem in _cart){
      receipt.writeln(
        "${CartItem.quantity} x ${CartItem.food.name} - ${_formatPrice(CartItem.food.price)}"
      );
      if(CartItem.selectedAddons.isNotEmpty){
        receipt.writeln("   Add-ons: ${_formatAddons((CartItem.selectedAddons))}");
      }
      receipt.writeln();
    }
    receipt.writeln("------------");
    receipt.writeln();
    receipt.writeln("Total Items: ${getTotalItemCount()}");
    receipt.writeln("Total Price: ${_formatPrice(getTotalPrice())}");

    return receipt.toString();
  }



  String _formatPrice(double price){
    return "\$${price.toStringAsFixed(2)}";
  }

  String _formatAddons(List<Addon> addons){
    return addons.map(
      (addon) => "${addon.name} (${_formatPrice(addon.price)})"
    ).join(", ");
  }

  
}
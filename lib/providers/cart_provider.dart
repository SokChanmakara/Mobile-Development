import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_project/models/product.dart';

class CartNotifier extends Notifier<Set<Product>>{
  @override
  Set<Product> build() {
      //example this is the current state (state)
    return {};
  }

  // Method to update the state
    // if (!state.contains(product))
    // Checks whether the product is already in the cart.
    // Since state is a Set<Product>, contains will return true if that product already exists in the set.
    // If the product is not in the set, then we proceed to add it.
      // This is set literal syntax with the spread operator ....
      // state is a Set<Product>, e.g., {product1, product2}
      // {...state, product} means:
      //     Copy all elements of state into a new Set
      //     Add product to that new set
        // "Create a new Set containing all the current items (state) plus the new product, and assign that to state."

  void addProduct(Product product){
    if(!state.contains(product)){
      state = {...state, product};
    }
  }

  void removeProduct(Product product){
    if(state.contains(product)){
      state = state.where((p)=> p.id != product.id).toSet(); //keeping only p.id that not equal to product.id,use toSet() to convert it back to set()
    }
  }
}

final cartNotifierProvider = NotifierProvider<CartNotifier, Set<Product>>((){
  return CartNotifier();
});
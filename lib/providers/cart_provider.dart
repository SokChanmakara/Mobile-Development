import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_project/models/product.dart';

class CartNotifier extends Notifier<Set<Product>>{
  @override
  Set<Product> build() {
    return const{
      Product(id: '1', title: 'Groovy Shorts', price: 12, image: 'assets/products/shorts.png'),
    };
  }
}

final cartNotifierProvider = NotifierProvider<CartNotifier, Set<Product>>((){
  return CartNotifier();
});
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:interiview_task/model/product.dart';

class ProductController {
  final String apiUrl = 'https://mansharcart.com/api/products/category/139/key/123456789';

  Future<List<Product>> fetchProducts() async {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      Map<String, dynamic> jsonResponse = json.decode(response.body);
      if (jsonResponse['success'] == true) {
        List<dynamic> productsData = jsonResponse['products'];
        return productsData.map((data) => Product.fromJson(data)).toList();
      } else {
        throw Exception('Failed to load products');
      }
    } else {
      throw Exception('Failed to fetch data');
    }
  }
}

import 'package:nucleio_panda_ecommerce_v2/model/exclusive_panda_model/exclusive_item_model.dart';

class ExclusiveHelper {
  static var exclusiveListModel = [
    ExclusiveItemModel(
        name: 'Fruits',
        deliveryPrice: 'Free Delivery',
        remaingTime: '15 min',
        image: "assets/Fruits.jpg",
        totalRating: '300',
        subTitle: 'Fruits',
        rating: '4.3'),
    ExclusiveItemModel(
        name: 'Vegetables',
        deliveryPrice: '50',
        remaingTime: '35 min',
        image: "assets/Vegetables.jpg",
        totalRating: '400',
        subTitle: 'Vegetables',
        rating: '4.7'),
    ExclusiveItemModel(
        name: 'Meat',
        deliveryPrice: '600',
        remaingTime: '20 min',
        image: "assets/Meat.jpg",
        totalRating: '560',
        subTitle: "Meat",
        rating: '2.3'),
  ];

  static ExclusiveItemModel getStatusItem(int position) {
    return exclusiveListModel[position];
  }

  static var itemCount = exclusiveListModel.length;
}

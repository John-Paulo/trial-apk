import 'package:nucleio_panda_ecommerce_v2/model/panda_pick_model/pandaPickItemModel.dart';

class PandaPickHelper {
  static var statusList = [
    PandaPickItemModel(
        name: 'Fruits',
        deliveryPrice: '90',
        remaingTime: '5 mins',
        image: "assets/Fruits.jpg",
        ratting: '4.8',
        subTitle: 'Nearby',
        totalRating: '1.2k'),
    PandaPickItemModel(
        name: 'Vegetables',
        deliveryPrice: '50',
        remaingTime: '15 min',
        image: "assets/Vegetables.jpg",
        ratting: '4.2',
        subTitle: '10 km Away',
        totalRating: '230'),
    PandaPickItemModel(
        name: 'Meat',
        deliveryPrice: '600',
        remaingTime: '245 min',
        image: "assets/Meat.jpg",
        ratting: '2.5',
        subTitle: "30 km Away",
        totalRating: '400'),
  ];

  static PandaPickItemModel getStatusItem(int position) {
    return statusList[position];
  }

  static var itemCount = statusList.length;
}

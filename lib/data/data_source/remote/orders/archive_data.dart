import '../../../../core/class/crud.dart';
import '../../../../core/constant/link_api.dart';

class OrdersArchiveData {
  Crud crud;
  OrdersArchiveData(this.crud);
  getData(String userid) async {
    var response = await crud.postData(AppLink.ordersarchive, {"id": userid});
    return response.fold((l) => l, (r) => r);
  }

  rating(String userid, String rating , String comment) async {
    var response = await crud.postData(AppLink.rating,
        {"id": userid, 'rating': rating, 'comment': comment});
    return response.fold((l) => l, (r) => r);
  }
}

import 'package:hive/hive.dart';

part 'transaction.g.dart';

@HiveType(typeId: 1)
class Transaction extends HiveObject {
  // Transaction(String _name, int _amount, bool _isExpense) {
  //   name = _name;
  //   amount = amount;
  //   isExpense = _isExpense;
  // }

  @HiveField(0)
  late String name;

  @HiveField(1)
  late int amount;

  @HiveField(2)
  late bool isExpense = true;

  void setName(String _name) {
    name = _name;
  }

  void setAmount(int _amount) {
    amount = _amount;
  }

  void setExpense(bool expense) {
    isExpense = expense;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['name'] = this.name;
    data['language'] = this.amount;
    data['emailId'] = this.isExpense;
    return data;
  }


}

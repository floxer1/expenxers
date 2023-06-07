// ignore_for_file:camel_case_type
enum TransactionType{
  outflow,
  inflow
}
enum ItemCategoryType{
  fashion,grocery,payments
}
class userInfo{
  final String name;
  final String totalBalance;
  final String inflow;
  final String outflow;
  final List<Transaction>transactions;
  const userInfo(
    {required this.name,
    required this.totalBalance,
    required this.inflow,
    required this.outflow,
    required this.transactions});
}
class Transaction{
  final ItemCategoryType categoryType;
  final TransactionType transactionType;
  final String itemCategoryName;
  final String itemName;
  final String amount;
  final String date;

  const Transaction(
    this.categoryType,
    this.transactionType,
    this.itemCategoryName,
    this.itemName,
    this.amount,
    this.date);
}
const List<Transaction>transactions1=[
  Transaction(ItemCategoryType.fashion,TransactionType.outflow,"Shoes","PUMA","\CFA400","OCT,23"),
  Transaction(ItemCategoryType.fashion,TransactionType.outflow,"Bag","Louis Vuitton","\CFA4060","OCT,12")
];
const List<Transaction>transactions2=[
  Transaction(ItemCategoryType.fashion,TransactionType.inflow,"Payements","Transfer from Erell","\CFA4000","OCT,26"),
  Transaction(ItemCategoryType.grocery,TransactionType.outflow,"Dior","Sauvage","\CFA40","OCT,13"),
    Transaction(ItemCategoryType.fashion,TransactionType.outflow,"Prada","Transfer from Rockfeller","\CFA00","OCT,2"),
  Transaction(ItemCategoryType.grocery,TransactionType.outflow,"Taxi","Messamendongo","\CFA700","OCT,7"),
];
const userdata=userInfo(
  name:"Kadji",
  inflow: "\5,672.00",
  outflow: "\300.00",
  totalBalance:"\33,550.00",
  transactions: transactions1);

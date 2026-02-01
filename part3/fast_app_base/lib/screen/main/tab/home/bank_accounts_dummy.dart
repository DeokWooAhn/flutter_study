import 'package:fast_app_base/screen/main/tab/home/banks_dummy.dart';
import 'package:fast_app_base/screen/main/tab/home/vo/vo_bank_account.dart';

final bankAccountShinhan1 = BankAccount(bankShinhan, 3000000, accountTypeName: "신한 주거래 우대통장(저축예금)");
final bankAccountShinhan2 = BankAccount(bankShinhan, 6000000, accountTypeName: "저축예금");
final bankAccountShinhan3 = BankAccount(bankShinhan, 8000000, accountTypeName: "저축 예금");
final bankAccountToss = BankAccount(bankToss, 15000000);
final bankAccountKakao = BankAccount(bankKakao, 12000000, accountTypeName: "입출통금장");

main() {
  print(bankAccounts[0].accountTypeName);
}

final bankAccounts = [
  bankAccountShinhan1,
  bankAccountShinhan2,
  bankAccountShinhan3,
  bankAccountToss,
  bankAccountKakao,
];
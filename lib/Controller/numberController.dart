import '../Model/numbersModel.dart';

class numberController {
  NumberModel? _number;

  void setNumbers(String s1, String s2){
    try {
      final number1 = int.parse(s1);
      final number2 = int.parse(s2);

      _number = NumberModel(number1, number2);
    } catch (e) {
      throw Exception('Ingrese valores numéricos válidos');
    }
  }

  List<String> calculateFriends(){
    _number!.calculateDivisors();
    if(_number!.areFriends()){
      return ["Los números son amigos", "Los divisores del primer número son:\n ${_number!.getDivisorsN1()}", "Los divisores del segundo número son: \n${_number!.getDivisorsN2()}"];
    }
    return ["Los números no son amigos", "", ""];
  }

}
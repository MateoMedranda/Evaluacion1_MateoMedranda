import '../Model/numbersModel.dart';

class numberController {
  NumberModel? _number;
  List<String> resultString = [""];
  bool error = false;

  void setNumbers(String s1, String s2){
    try {
      final number1 = int.parse(s1);
      final number2 = int.parse(s2);

      if(number1 <0 || number2 <0){
        error = true;
      }else{
        error = false;
      }

      _number = NumberModel(number1, number2);
    } catch (e) {
      resultString[0] = "Ingrese valores numéricos válidos";
      error = true;
    }
  }

  List<String> calculateFriends(){
    _number!.calculateDivisors();
    if(_number!.areFriends()){
      resultString = ["Los números son amigos", "Los divisores del primer número son:\n ${_number!.getDivisorsN1()}", "Los divisores del segundo número son: \n${_number!.getDivisorsN2()}"];
    }else{
      resultString = ["Los números no son amigos", "", ""];
    }
    if(error){
      resultString = ["Ingrese valores numéricos válidos","",""];
    }
    return resultString;
  }

}
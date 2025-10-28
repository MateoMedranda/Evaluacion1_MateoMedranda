class NumberModel {
  // Definimos las variables necesarias
  final int number1;
  final int number2;
  List<int> divisorsN1 = [];
  List<int> divisorsN2 = [];

  // definimos el constructor
  NumberModel(this.number1, this.number2);

  //definimos el metodo para comprobar si son amigos
  void calculateDivisors(){
    for(int i = 0; i<number1; i++){
      if(number1 % i == 0){
        divisorsN1.add(i);
      }
    }
    for(int i=0; i<number2; i++){
      if(number2%i==0){
        divisorsN2.add(i);
      }
    }
  }

  bool areFriends(){
    int sumaN1 = 0;
    int sumaN2 = 0;

    for(int i = 0; i<divisorsN1.length; i++){
      sumaN1 += divisorsN1[i];
    }

    for(int i = 0; i<divisorsN2.length; i++){
      sumaN2 += divisorsN2[i];
    }

    if(sumaN1 == number2 && sumaN2 == number1){
      return true;
    }
    return false;
  }

  String getDivisorsN1(){
    String divisors = "";
    for(int i = 0; i <divisorsN1.length; i++){
      if(i != divisorsN1.length-1){
        divisors += "${divisorsN1[i]}, ";
      }else{
        divisors += "${divisorsN1[i]}";
      }

    }
    return divisors;
  }

  String getDivisorsN2(){
    String divisors = "";
    for(int i = 0; i <divisorsN2.length; i++){
      if(i != divisorsN2.length-1){
        divisors += "${divisorsN2[i]}, ";
      }else{
        divisors += "${divisorsN2[i]}";
      }
    }
    return divisors;
  }
}
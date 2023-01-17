import Float "mo:base/Float";

actor task {
  

  public query func multiply(arg1 : Int, arg2 : Int) : async Int {
    return arg1 * arg2;
  };

  public func addtoreturnvalue(n1 : Float, n2 : Float) : async Float {
    let number1 = Float.toInt(n1);
    let number2 = Float.toInt(n2);
    let multiplyResult = await multiply(number1, number2);
    let floatresult = Float.fromInt(multiplyResult);
    return floatresult + 10.3;
    
  };

 
};
import Text "mo:base/Text";
import Prim "mo:prim";
import Array "mo:base/Array";



actor Day2 {

    //1

    let myArray : [Int] = [1, 2, 3, 4, 5];
    var sum : Int = 0;

    public func average_array() : async Int {
        for (value in myArray.vals()){
          sum := sum + value;
        };
       return sum / myArray.size(); 
    };

    
 
    //2 Couldn't figure how to pass Char type to candid ui because it requires nat32 value so i had to improvise with this solution. Used two text values and changed one of them to Char type with Char.mo Base. Also used the Text.mo Base for Text.contains method. Worked like a charm on Motoko Playground.

  public func count_character(t: Text, c: Text) : async Nat {
        var counter: Nat = 0;
        for(item in t.chars()) {
          var toText : Text = Prim.charToText(item);
          if(Text.contains(toText, #text c)){
            counter += 1;
          }
        };
        return counter;
    };

    // 3 (Thank god dfinity example libraries exists)

    public query func factorial(n : Nat) : async Nat {

    func calculate(m : Nat) : Nat {
      if (m == 0) {
        return 1;
      } else {
        return m * calculate(m - 1);
      };
    };

 
    return calculate(n);
  };

  //4 I didn't expect it to work but life is full of surprises.

  
  public func number_of_words(arg : Text) : async Nat {
    var aa : Nat = 1;
    var bb : Text = "t";
     for(c in arg.chars()) {
       bb := Text.fromChar(c);
       if (bb ==  " "){
         aa := aa +1;
       }
     };
     return aa;
  };


  //5
  

  public func find_duplicatese(a : [Nat]) : async [Nat]  {
    var myArray : [Nat] = Array.reverse(a);
    var finalArray : [Nat] = Array.reverse(myArray);
    return finalArray;
  };


};
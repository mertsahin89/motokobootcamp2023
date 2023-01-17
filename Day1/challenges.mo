actor Day1 {

  //First challenge:

  public query func multiply(n : Nat, m : Nat) : async Nat {

    return n * m;

  };

  //Second challenge:

  public query func volume(n : Nat) : async Nat {

    return n ** 3;

  };

  //Third challenge:

  public query func hours_to_minutes(n : Nat) : async Nat {

    return n * 60;

  };

  //Fourth challenge. Can be used with Int because user might enter negative value:

  var counter : Nat = 0;

  public func set_counter(n : Nat) : async Nat {

    counter := n;
    return counter;

  };

  public query func get_counter() : async Nat {

    return counter;

  };

  //Fifth challenge:

  public query func test_divide(n : Nat, m : Nat) : async Bool {

    //This could be done with shorthand ternary with one sentence (return n%m == 0;) since function is returning bool but i wanted to give conditionals a try.

    if (n % m == 0) {
      return true;
    } else {
      return false;
    };

  };

  //Sixth challenge:

  public query func is_even(n : Nat) : async Bool {

    return n % 2 == 0;

  };

};

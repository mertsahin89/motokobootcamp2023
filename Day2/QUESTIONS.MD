1. Who controls the ledger canister?
-Nns Dao controls it.

2. What is the subnet of the canister with the id: mwrha-maaaa-aaaab-qabqq-cai? How much nodes are running this subnet?
-Controllers
a3hwk-dyaaa-aaaab-qaa4a-cai,
k3f6a-5uxhv-dqjj6-762lc-yazgp-drpws-a35e7-wf27k-ujuio-ye2lh-xqe
Subnet ID
pae4o-o6dxf-xki7q-ezclx-znyd6-fnk6w-vkv5z-5lfwh-xym2i-otrrw-fqe
Node Machines
16

3. I have a neuron with 1O ICPs locked with a dissolve delay of 4 years - my neuron has been locked for 2 years. What is my expected voting power?

-With a locked neuron of 10 ICP and a dissolve delay of 4 years that has been locked for 2 years, you can expect a voting power of approximately 14.2%.



4. What is wrong with the following code?
actor {
  let n : Nat = 50;
  let t : Text = "Hello";

  public func convert_to_text(m : Nat) : async Text {
    Nat.toText(m);
  };
 
}

-It uses base library method. import Nat "mo:base/Nat" should make it work.


5. What is wrong with the following code?

actor {
  var languages : [var Text] = ["English", "German", "Chinese", "Japanese", "French"];

  public func show_languages(language : Text) : async [var Text] {
    return (languages);
  };
 
}

-It's a public function that uses mutable data types. Following code should work:

actor {
  let languages : [Text] = ["English", "German", "Chinese", "Japanese", "French"];

  public func show_languages(language : Text) : async [Text] {
    return (languages);
  };
 
}

6. What is wrong with the following code?

actor {
  var languages : [Text] = ["English", "German", "Chinese", "Japanese", "French"];

  public func add_language(new_language: Text) : async [Text] {
    languages := Array.append<Text>(languages, [new_language]);
    return (languages);
  };
 
}

-It uses base library method. import Array "mo:base/Array" should make it work.
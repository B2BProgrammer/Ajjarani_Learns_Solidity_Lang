pragma solidity ^0.4.0;

/*
chapter 3 : Custom modifiers & error Handling
address will be learnt
msg will have sender, 
*/

interface Regulator{
    function checkValue(uint amount) returns(bool);
    function loan() returns (bool);
}

// any functions in Bank wil be present in child contracts
contract Bank {
    uint private value; // internal is equivalent to protected[access specifier]
    address private owner; // owner fo the contract
    
    // Execute this before 
    modifier ownerFunc{
        require(owner == msg.sender); // 3 ways to error handling 
        _; // 
    }
    
    
  /*  function testThrow(){
        throw; // will be deprecated
    }*/
    
    // constructor method
    function Bank(uint amount){
        value = amount;
        owner = msg.sender;
    }
    
    // only owner fo  can modify this 
    function deposit(uint amount) ownerFunc{
        value += amount;
    }
    
    // only owner can modify this 
    function withdraw(uint amount) ownerFunc{
        if(checkValue(amount)){
            value-= amount;
        }
    }
    
    function balance() returns(uint){
        return value;
    }
    
    // abstract method - not implemented -- no  keyword like abstract
    function loan1() returns(bool);
    
    
     function checkValue(uint amount) returns(bool){
        return amount >=value;
    }
 
    function loan() returns(bool){
     return value > 0;
    }
}



// "is" keyword for implementation Inheritenace
// i.e - it will start with a basic value 10, as this is initialized
contract myFirstContract is Bank(10){
 
 string private name; // String variable declartion
 uint private age; // Unsigned integer declartion
 
 function setName(string newName){
     name = newName;
 }
 
 function getName() returns(string){
     return name;
 }
 
 function setAge(uint newAge){
     age = newAge;
 }
 
 function getAge() returns(uint){
     return age;
 }
 
 
}


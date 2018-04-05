pragma solidity ^0.4.0; 
/*

Inheritenace will be learnt :
*/

interface Regulator{
    function checkValue(uint amount) returns(bool);
    function loan() returns (bool);
}

// any functions in Bank wil be present in child contracts
contract Bank {
    uint private value; // internal is equivalent to protected[access specifier]
    
    // constructor method
    function Bank(uint amount){
        value = amount;
    }
    
    function deposit(uint amount){
        value += amount;
    }
    
    function withdraw(uint amount){
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


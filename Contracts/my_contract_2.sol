pragma solidity ^0.4.0;

// Interface Creation
interface Regulator{
    function checkValue(uint amount) returns(bool);
    function loan() returns(bool);
}

// Contract has Interface - Regulator
contract Bank is Regulator{
    
    uint private value;
    
    // Constructor for the contract
    function Bank(uint amount){
        value = amount;
    }
    
  	function deposit(uint amount){
  		value += amount;  		
  	}
  	
  	function withdraw(uint amount){
  		if(checkValue(amount)){
  		    value -=amount;
  		}
  	}
  	
  	function balance() returns (uint){
  		return value;
  	}
  	
  	function checkValue(uint amount) returns (bool){
  	    return amount >= value;
  	}
  	
  	// abstarct method note :No keyword like abstract
  	//function loan() returns (bool);
    
    function loan() returns(bool){
        return value >0;
    }
}

// is keyword for inheritance to implement
contract myFirstContract is Bank(10) {
    
   string private name;
   uint private age; 
   
   /*
    * Function name : setName
    * Return type : Nothing
    */
  function setName(string newName){      
      name = newName;
  }
  
  function getName() returns (string){
  	return name;
  }
  
    function setAge(string newAge){
      name = newAge;
  }
  
  function getAge() returns (uint){
  	return age;
  }
  
  // Implemenation of abstract method from super contract
  function checkValue() returns(bool){
      return true;
  }
   
}
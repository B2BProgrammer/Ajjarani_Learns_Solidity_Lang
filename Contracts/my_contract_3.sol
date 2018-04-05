pragma solidity ^0.4.0;

/*
 * Access Modification + Error Handling
 */


// Interface Creation
interface Regulator{
    function checkValue(uint amount) returns(bool);
    function loan() returns(bool);
}

// Contract has Interface - Regulator
contract Bank is Regulator{
    
    uint private value;  
    address private owner; // owner of the contract
    
    modifier ownerFunc {
        require(owner == msg.sender);
        _; //i.e 
    }
    
    
    function testThrow(){
    	throw;    
    }
    
    // Constructor for the contract
    function Bank(uint amount){
        value = amount;
        owner = msg.sender;
    }
    
    // Only owner of the contract can access
  	function deposit(uint amount) ownerFunc{
  		value += amount;  		
  	}
  	
  	//Only wo
  	function withdraw(uint amount) ownerFunc{
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

contract TestThrows{
    function testAssert(){
    	assert(1==2);    
    }
    
    function testRequire(){
    	require (2==1);	
    }
    
    function testRevert(){
    	
    }
    
    
}
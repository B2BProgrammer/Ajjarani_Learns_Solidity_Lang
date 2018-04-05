pragma solidity ^0.4.0;

contract myFirstContract {
    // This is comment
   
   // String Declaration
   //  private
   /*
    * private
    * public 
    * internal 
    * 3 Kinds of Access specifiers
    * 
    * uint [only positive value, allowed]
    */
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
   
}
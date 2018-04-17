pragma solidity ^0.4.0;

/*
Inheritence :

Father object
son object
* 
* "is" - keyword used to implement inheritence
 */

contract mortal {
    address public owner;
    
    function mortal(){
        owner = msg.sender;
    }
    
    modifier onlyOwner {
        if (msg.sender != owner){
            throw;
        } else {
            _;
        }
    }
    
    function kill(){
        suicide(owner); // etherum provide this , takes argument & disable/kill it get ether/money back
    }
} 
 
// "is" keywords makes the following contract, child of parent contract 
contract User is mortal{
     string public userName;
     
     function User(string _name){
        userName = _name;
     }
 }
 
 
contract Provider is mortal {
     string public providerName;
     
     function Provider(string _name){
        providerName = _name;
     }
 }
 
 
 
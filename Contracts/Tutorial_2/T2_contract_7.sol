pragma solidity ^0.4.0;

/*
 * Things learnt :
 * 
 * keyword "payable"
 * 
 * Whenever , we use the keyword "payable", This will make the contract capable to recieve the money/funds
 * 
 * How to Test :
 * Go to VALUE textbox & key in 5 or 6 or 7 
 * Denomination is wei [That is the money]
 * 
 * This will make you to recieve the money
 * 
 * Then check the money recived by getBalance()
 * 
 * Denomination Type : in Etherum
 * 
 * wei
 * gwei
 * finney
 * ether 
  */

contract payableContract {
    
    function payableContract(){
        
    }
    
    // payable - will make to recive money/funds
    function recieveFunds() payable{
        
    }
    
    
    function getBalance() constant returns(uint){
        return this.balance;
    }
}
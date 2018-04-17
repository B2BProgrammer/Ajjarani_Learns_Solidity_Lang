pragma solidity ^0.4.0;

/*
 * 
 * Things learnt :
 * 
 * Contracts - treated as Java Classes
 * 
 * 1. Creation of contract objects
 * 2 Types :
 * a. new
 * b. using address of contract.
 * 
 * When, you execute - you will have 2 things :
 * 
 * callerContract1
 * calledContract2 

*/
contract CallerContract1 {
    // Contract object creation using new keyword
    CalledContract2 toBeContract1 = new CalledContract2();
    
     // This number is a memory address of contract - CalledContract2, if something wrong it will result in 0
    CalledContract2 toBeContract2 =  CalledContract2(0xd292d0be77587d50ac26b99e8eb3fa324ed21fda); 
    
    function getNumber1() constant returns(uint){
        return toBeContract1.getNumber();
    }
    
    function getNumber2() constant returns(uint){
        return toBeContract2.getNumber();
    }
}


contract CalledContract2 {
    uint number = 300;
    
    function getNumber() constant returns(uint){
        return number;
    }
}
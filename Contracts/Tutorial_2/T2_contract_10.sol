pragma solidity ^0.4.0;

/*
 * Things Learnt :
 * 
 * 1. creation of Object of contract 
 * a. New & 
 * b. Memory address of Contract(if contract is closed/cleaned) .. this is useless
 * 
 * 
 * 
 */
contract Calculator {

    Math math = new Math();
    Math math1 = Math(0xd25ed029c093e56bc8911a07c465454000cbf37c6);
    
    function callAdd() constant returns(int){
        return math.add(2,4);
    }
    
    function callMultiply() constant returns(int){
        return math.mulitply(2,4);
    }
}



contract Math{
    
    function add(int a, int b) returns(int){
        return a + b;
    }

    
    function mulitply(int a, int b) returns(int){
        return a * b;
    }
}
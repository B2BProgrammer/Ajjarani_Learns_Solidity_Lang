pragma solidity ^0.4.0;

/*
 * Lesson 4 : Concepts learnt
 * 
 * 1. Consturctor : Function with the name of Contract, is the constructor 
 * Constructor is executed only 1 time during the exection of contract
 * 
 * 2. address :  Any value infront of Account, This the address of msg.sender "0x14723a09acff6d2a60dcdf7aa4aff308fddc160c"
 * 3. This lesson, Will demonstrate, only the owner, the msg.sender from whom, we created is able to do changes to word text
 * 
 */

contract HelloWorldContract{
    string word = 'Hello World !!';
    address owner;     
    
    /*
     * Constructor, which is always executed, at any cost
     */
    function HelloWorldContract(){
        owner = msg.sender;
    }
    
    function getWord() constant returns(string){
        return word;
    }
    
    function setWord(string newWord) returns(string){
        if(owner != msg.sender){
            return "You shall not pass";
        } else {
            word = newWord;
            return "You have successfully Changed";
        }
        
    }
}
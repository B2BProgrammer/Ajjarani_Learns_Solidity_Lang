pragma solidity ^0.4.0; // This is the first statment required

/*
 * Solidity is more like a java language, so 
 * 
 * Class - Contract
 * Function - function[Inside teh contract]
 * 
 * Variable Declartoin :
 * string
 * 
 */
 
 /*
  * Hello World Contract : 
  * 
  * Setter : Set any value to the string word
  * Getter : Get the value to Javascript VM
  */

contract HelloWorldContract{
    string word = 'Hello World !!';
    
    function getWord() constant returns(string){
        return word;
    }
    
    function setWord(string newWord){
        word = newWord;
    }
}
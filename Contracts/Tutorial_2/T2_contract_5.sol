pragma solidity ^0.4.0;

/*
 * 
 * Lessons Learnt :
 * 
 * Modifier : How & Why to use Modifier, Need to still learn in detail
 * 
 */
contract HelloWorldContract{
    string word = 'Hello World !!';
    address owner;     
    
    function HelloWorldContract(){
        owner = msg.sender;
    }
    
    
    /*
     modifier, always need to have "_", other wise it will throw Error
    */
    modifier onlyOwner {
        if(owner != msg.sender){
            throw; // Throwing an Error
        }else {
            _; // 
        }       
     }
    
    function getWord() constant returns(string){
        return word;
    }
    
    function setWord(string newWord) onlyOwner returns(string){
        word = newWord;
        return "You have succcessflly Changed";
        
    }
}
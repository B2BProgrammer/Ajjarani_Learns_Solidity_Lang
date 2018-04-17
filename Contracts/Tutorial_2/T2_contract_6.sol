pragma solidity ^0.4.0;


/*
 * Things learned :
 * 
 * Event : -- Need to understankd word
 */
contract DummyContract {
    
    string word;
    uint number;
    address owner;
    
    function DummyContract(string _word){
     word = _word;
     number = 42;
     owner = msg.sender;
    }
    
    event Changed(address a);
    
    modifier onlyOwner{
        require(msg.sender == owner);
        _;
    }
    
    function getWord() constant returns(string){
        return word;
    }
    
    function setWord(string newWord) onlyOwner{
        word = newWord;
        Changed(msg.sender);
    }
}
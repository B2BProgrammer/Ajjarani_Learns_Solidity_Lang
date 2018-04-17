pragma solidity ^0.4.0;

contract Savings {
    address owner;
    
    event UpdateStatus(string _msg);
    event UserStatus(string _msg, address user, uint amount);
    
    function Savings(){
        owner = msg.sender;
    }
    
    function depositFunds() payable {
        UserStatus('User has deposited some money', msg.sender, msg.value);
    }
    
    function withdrawFunds(uint amount) onlyOwner {
        if(owner.send(amount)){
            UpdateStatus('User withdraw some money');
        }
    }
    
    function kill() onlyOwner {
        suicide(owner);
    }
    
    modifier onlyOwner(){
        if(owner != msg.sender){
            throw;
        } else {
            _;
        }
    }
}
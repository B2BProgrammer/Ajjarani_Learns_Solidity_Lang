pragma solidity ^0.4.21;

contract Coin {
    // The keyword "public" makes those variables
    // readable from outside.
    
    //The address type is a 160-bit value that does not allow any arithmetic operations. 
    //It is suitable for storing addresses of contracts or keypairs belonging to external persons
    address public minter;
    
    
    mapping (address => uint) public balances;
    
    /*
     * balances - Map
     * ---------------------
     * Contrat     Money 
     * addresss || uint
     * --------------------
     * -XXXXXXX || 1344
     * --------------------
     */

    // Events allow light clients to react on
    // changes efficiently.
    /*
     * event is used for communication with clients like (angularjs,reactjs to communicate with 
     * 
     * from : address of contract
     * to : another address of contract
     */
    event Sent(address from, address to, uint amount);

    // This is the constructor whose code is
    // run only - once when the contract is created, not after trhe contract is created
    function Coin() public {
        minter = msg.sender;
        
        msg.
    }

    function mint(address receiver, uint amount) public {
        if (msg.sender != minter) return;
        balances[receiver] += amount;
        
        
    }

    function send(address receiver, uint amount) public {
        if (balances[msg.sender] < amount) return;
        balances[msg.sender] -= amount;
        balances[receiver] += amount;
        emit Sent(msg.sender, receiver, amount);
    }
}
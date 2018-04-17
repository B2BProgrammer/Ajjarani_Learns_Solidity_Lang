pragma solidity ^0.4.0;

contract variables {
    
    /*
     * All Public variables are available to test from RUN Tab
     */
    // Public variables declaration
    string public firstName = 'Ajith';
    int public numTwo = 2;
    uint256 public three = 3;
    uint public four = 4;
    address public address1 = 0xca35b7d915458ef540ade6068dfe2f44e8fa733c; //Address from wallet
    bool public bool1 = true;
    
    /*
     * No Private variables are available to test from RUN Tab
     */
    // Private Variable declaration
    uint256 private newThree = 3;
    uint private numFour = 4;
    address private address2 = 0xca35b7d915458ef540ade6068dfe2f44e8fa733c; //Address from wallet
    bool private bool2 = true;
}
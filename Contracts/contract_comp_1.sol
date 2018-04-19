pragma solidity ^0.4.18;  // pragmas are instructions for the compiler about how to treat the source code



/*
 * Solidity Contract Oriented Lang, is inspired of Java & JavaScript
 *  1. DataTypes : string, int, uint, address, bool
 * 	2. Access Specifer for DataTypes : 
 * 		public : All Functions can access
 * 		private : 
 * 		literal : Kind of Protected
 *  2. Constructor
	3. 
 * 
 * 
 * 
 * 
 */
 
contract ContractComp1 {
    address creator;
    
    
    /***********
     * All Public variables are available to test from RUN Tab
     ***********/
    // Public variables declaration
    string public firstName = 'Ajith';
    int public numTwo = 2;
    uint256 public three = 3;
    uint public four = 4;
    address public address1 = 0xca35b7d915458ef540ade6068dfe2f44e8fa733c; //Address from wallet
    bool public bool1 = true;
    
    /***********
     * No Private variables are available to test from RUN Tab
     ***********/
    // Private Variable declaration
    uint256 private newThree = 3;
    uint private numFour = 4;
    address private address2 = 0xca35b7d915458ef540ade6068dfe2f44e8fa733c; //Address from wallet
    bool private bool2 = true;
    
    
    

	/***********
	 * Constructor : Funciton with the contract name - always executed
		Used to initialze the Variables	 
	 ***********/	
    function ContractComp1 () {
        creator = msg.sender;
    }

     /**********
     Standard kill() function to recover funds 
     **********/
    function kill() {
        if (msg.sender == creator) {
            suicide(creator); // kills this contract and sends remaining funds back to creator
        }
    }
    
    /* LESSON - 3
     * 1. Eg for Functions Usage in Solidity
     * 2. If - Else : case usage in Solidity
     */     
    
    string public text = '';
    int public numberOfChanges = 0;
    
    function callTextUpdate(){
        if(numberOfChanges > 2){
            changeToBye();
        } else {
            changeToHello();
        }
    }
    
    function changeToHello() {
        numberOfChanges +=1;
        text = 'Hello World'; // ''
    }
    
     function changeToBye(){
        numberOfChanges +=1;
        text = "Bye"; // "" 
    }
    
    
    
    /* Lesson 4 : Modifier
     modifier, always need to have "_", other wise it will throw Error
    */
    
    string word = 'Hello World !!';
    
    modifier onlyOwner {
        if(creator != msg.sender){
            throw; // Throwing an Error
        }else {
            _; // 
        }       
     }
     
     
     function getWord1() constant returns(string){
        return word;
    }
    
    // onlyOwner - will make sure, only creator is able to access this function
    function setWord1(string newWord) onlyOwner returns(string){
        word = newWord;
        return "You have succcessflly Changed";
        
    }
    
    
    /* Lesson 5 : Events
     * Events - Need to understand 
     */
      event Changed(address a);
    
    modifier onlyOwner1{
        require(msg.sender == creator);
        _;
    }
    
    function getWord() constant returns(string){
        return word;
    }
    
    function setWord(string newWord) onlyOwner1{
        word = newWord;
        Changed(msg.sender);
    }
    
    
    /*Lesson 7 : Payable
     * Whenever , we use the keyword "payable", This will make the contract capable to recieve the money/funds
      */
     // payable - will make to recive money/funds
    function recieveFunds() payable{
        
    }
    
    
    function getBalance() constant returns(uint){
        return this.balance;
    }
    
    /*Lesson 8 - Contract Object Creation
     * 
      */
    
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



/*
 *Another contract, which will be instatiated 
 * 
 * 
  */

contract CalledContract2 {
    uint number = 300;
    
    function getNumber() constant returns(uint){
        return number;
    }
}

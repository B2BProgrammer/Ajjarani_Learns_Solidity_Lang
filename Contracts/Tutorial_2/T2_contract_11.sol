pragma solidity ^0.4.0;


/*
  Contract - 4 people working together
  
  trasnfer money, equally .. therefore no cheating
*/
contract Paycheck {
    
    // address of all employees/persons working
    address[] employees = [0xca35b7d915458ef540ade6068dfe2f44e8fa733c,
                           0x14723a09acff6d2a60dcdf7aa4aff308fddc160c,
                           0x4b0897b0513fdc7c541b6d9d7e929c4e5364d2db,
                           0x583031d1113ad414f02576bd6afabfb302140225];
    uint totalRecieved = 0;
    mapping(address => uint) withdrawnAmounts; // mapping is like a Map/Dictionary collection
    
    
    // make, Constructor/owner paybale - enable to send money
    function Paycheck() payable {
        updateTotal();
    }
    
    // Able to recive money
    function() payable{
        updateTotal();
    }
    
    
    // Protected, as nobody else need to execute
    function updateTotal() internal {
        totalRecieved += msg.value;
    }
    
    
    function withDraw() canWithdraw {
        uint amountallocated = totalRecieved/employees.length;
        uint amountWithdrawn = withdrawnAmounts[msg.sender];
        uint amount = amountallocated - amountWithdrawn;
        withdrawnAmounts[msg.sender] = amountWithdrawn + amount;
        if(amount > 0) {
            msg.sender.transfer(amount);
        }
        
    }
    
    
    modifier canWithdraw(){
        bool contains = false;
        
        for(uint i=0; i< employees.length; i++){
            if(employees[i] == msg.sender){
                contains = true;
            }
        }
        require(contains);
        _;
    }
    
}
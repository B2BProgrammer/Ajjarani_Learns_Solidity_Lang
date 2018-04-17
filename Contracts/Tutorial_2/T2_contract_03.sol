pragma solidity ^0.4.0;

/*
 * Lesson to Understand 
 * 
 * 1. Usage of Functions in Contract
 * 2. Calling 1 function to another functino in Contract
 * 3. If - Else Case Usage
 * 4. String value can be assigned with "" or ''
 */

contract Functions {
    string public text = '';
    int public numberOfChanges = 0;
    
    function callTextUpdate(){
        if(numberOfChanges > 2){
            changeToBye();
        } else {
            changeToHello();
        }
    }
    
    function changeToHello(){
        numberOfChanges +=1;
        text = 'Hello World'; // ''
    }
    
     function changeToBye(){
        numberOfChanges +=1;
        text = "Bye"; // "" 
    }
}
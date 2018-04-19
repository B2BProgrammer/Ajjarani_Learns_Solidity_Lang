pragma solidity ^0.4.0;


contract myFirstContract{
    string private name; // String variable declaration
    uint private age; // Unsigned integer declarationn

    function setName(string newName){
        name = newName;
    }

    function getName() returns(string){
        return name;
    }

    function setAge(uint newAge){
        age = newAge;
    }

    function getAge() returns(uint){
        return age;
    }
}




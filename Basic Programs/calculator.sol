// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract calculator{
    //all our solidity code and all 3 data types
    function addValues(uint a,uint b) public view returns(uint){
        return a + b;
    }

    function subtract(uint a, uint b) public view returns(uint){
        return a - b;
    }

    function multiply(uint a,uint b) public view returns(uint){
        return a * b;
    }


    function divide(uint a,uint b) public view returns(uint){
        return a/b;
    }
}

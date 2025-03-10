// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;
contract LearnArrays
{
    uint[] public myArray;
    uint[] public myArray2;
    uint[200]public myFixedSizedArray;


    function push(uint number)public 
    {
        myArray.push(number);
    }

    function pop()public 
    {
        myArray.pop();
    }

    function getlength()public view returns(uint)
    {
        return myArray.length;
    }
}

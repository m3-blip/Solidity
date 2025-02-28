// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;
contract Op{

    function add(uint a,uint b)public pure  returns(uint)
    {
        return a+b;
    }

    function subtract(uint a,uint b)public pure returns(uint)
    {
        return a-b;
    }

    function multiply(uint a,uint b)public pure returns(uint)
    {
        return a*b;
    }

    function divide(uint a, uint b)public pure returns(uint)
    {
        return a%b;
    }
    function compare(uint a,uint b)public pure returns(bool)
    {
        require(a>b,'true');
        return true;
    }

}

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract myLoopingPracticeContract
{
    string greetings='Hello';

    function sayHello()public view returns(string memory)
    {
        return greetings;
    }
}

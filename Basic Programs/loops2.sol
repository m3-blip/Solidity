// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract myLoopingPracticeContract
{
    uint[]longList=[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20];
    uint[]numbersList=[1,24,34,56];

    function numbersListLoop(uint usernumber) public view returns(bool)
    {
        bool numberExists=false;
        for(uint i=0;i<numbersList.length;i++)

        {
            if(numbersList[i]==usernumber)
            {
                numberExists=true;
            }
        }
        return numberExists;
    }


    function evenNumbersLoop()public view returns(uint)
    {
        uint count=0;
        for(uint j=0;j<longList.length;j++)
        {
            if(longList[j]%2==0)
            {
                count++;
            }

        }
        return count;

    }
}

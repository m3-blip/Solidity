// SPDX-License-Identifier: MIT
// SPDX (Software Package Data Exchange) license identifier that specifies the license type.
// "MIT" means the code is open-source and free to use.

pragma solidity >=0.7.0 <0.9.0;
// "pragma" is a directive that tells the compiler which Solidity version to use.
// "solidity" specifies that it's Solidity code.
// ">=0.7.0 <0.9.0" means this contract can be compiled with any Solidity version 
// starting from 0.7.0 up to (but not including) 0.9.0.

contract WelcomeToSolidity {
// "contract" is a keyword that defines a new smart contract.
// "WelcomeToSolidity" is the name of the contract.

    constructor() {
        // "constructor()" is a special function that runs only once when the contract is deployed.
        // Since it's empty, it does nothing in this case.
    }

    function getResult(uint a, uint b) public pure returns (uint) {
    // "function" defines a function inside the contract.
    // "getResult" is the function name.
    // "(uint a, uint b)" means it takes two unsigned integer (uint) inputs.
    // "public" makes this function callable by anyone (inside or outside the contract).
    // "pure" indicates that this function does NOT read or modify blockchain storage.
    // "returns (uint)" specifies that the function returns an unsigned integer.

        return a + b;
        // This line adds the two input values "a" and "b" and returns the sum.
    }
}


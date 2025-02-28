// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract VariableScopeExample {

    // 🏦 State Variables (Stored permanently on the blockchain)
    uint256 public stateNumber = 42;
    string private secretMessage = "Top Secret";  // Private state variable

    // 📦 Global Variable Example (Stores contract deployer address)
    address public owner;

    // 🔥 Events (To log state changes)
    event NumberUpdated(uint256 newNumber);

    // 🚀 Constructor - Runs only once when contract is deployed
    constructor() {
        owner = msg.sender;  // Stores the deployer's address in a state variable
    }

    // ✅ Function with Local Variables (Exists only during function execution)
    function addNumbers(uint a, uint b) public pure returns (uint) {
        uint sum = a + b;  // Local variable (disappears after function runs)
        return sum;
    }

    // ✅ Function with View (Reads but doesn’t modify state variables)
    function getStateNumber() public view returns (uint256) {
        return stateNumber;  // Reads from the state variable
    }

    // ✅ Function with State Modification
    function updateStateNumber(uint256 newNumber) public {
        stateNumber = newNumber;  // Modifies the blockchain state
        emit NumberUpdated(newNumber);  // Emits an event
    }

    // ✅ Function with Global Variables
    function getBlockInfo() public view returns (uint256, address) {
        return (block.number, msg.sender);  // Returns the block number & sender
    }

    // ✅ Private Function (Only callable inside this contract)
    function getSecretMessage() private view returns (string memory) {
        return secretMessage;  // Accessing private state variable
    }

    // ✅ Internal Function (Accessible within this contract & inherited contracts)
    function internalFunction() internal pure returns (string memory) {
        return "Internal Function Called!";
    }

    // ✅ External Function (Can only be called from outside the contract)
    function externalFunction() external pure returns (string memory) {
        return "External Function Called!";
    }

    // ✅ Payable Function (Allows sending ETH to the contract)
    function deposit() public payable {
        // msg.value holds the amount of ETH sent
    }

    // ✅ Function to Check Contract Balance
    function getBalance() public view returns (uint256) {
        return address(this).balance;  // Returns the contract's ETH balance
    }
}

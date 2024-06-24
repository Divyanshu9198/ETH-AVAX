// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Base contract
contract MyContract {
    uint256 public storedData;

    constructor(uint256 _initialData) {
        storedData = _initialData;
    }

    // View function to read the state variable
    function getStoredData() public view returns (uint256) {
        return storedData;
    }

    // Pure function that adds two numbers
    function add(uint256 a, uint256 b) public pure returns (uint256) {
        return a + b;
    }

    // Payable function to receive Ether
    function receiveEther() public payable {}

    // View function to get the balance of Ether in the contract
    function getContractBalance() public view returns (uint256) {
        return address(this).balance;
    }
}

// Derived contract
contract DerivedContract is MyContract {
    constructor(uint256 _initialData) MyContract(_initialData) {}

    // Additional view function in the derived contract
    function getDoubleStoredData() public view returns (uint256) {
        return storedData * 2;
    }
}

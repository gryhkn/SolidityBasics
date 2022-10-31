// SPDX-License-Identifier: MIT
pragma solidity 0.8.0;

contract Controls {

    bytes32 private hashedPass;

    constructor(string memory _pass) { // the "memory" term keeps the value of the _pass parameter in this func, not blockchain.
        hashedPass = keccak256(abi.encode(_pass)); // we hashed the _pass input.
    }

    //In this function, we control the password user input when contract deployed in constructor with login functions input.
    function login(string memory _password) public view returns (string memory) {
        // Compares the input of this function with the input of the constructor.
        if (hashedPass == keccak256(abi.encode(_password))) { //keccak256 is a one of the hash functions.
            return "Success"; // If they are equals, then return "Success"
        } else {
            return "Failed"; // If they are not equal, then return "Failed"
        }
    }
}
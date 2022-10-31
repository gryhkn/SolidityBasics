// SPDX-License-Identifier: MIT
pragma solidity 0.8.0;

contract Controls {

    bytes32 private hashedPass;

    constructor(string memory _pass) { // the "memory" term keeps the value of the _pass parameter in this func, not blockchain.
        hashedPass = keccak256(abi.encode(_pass)); // we hashed the _pass input.
    }

    function login(string memory _password) public view returns (string memory) {
        if (hashedPass == keccak256(abi.encode(_password))) {
            return "Basarili";
        } else {
            return "Basarisiz";
        }
    }
}
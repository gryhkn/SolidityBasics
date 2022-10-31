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

        /* 
        Of course we didn't have to use if-else structure for this example. We could use basically below statement:

        return (hashedPass == keccak256(abi.encode(_password))) ? "Success" : "Failed" ;
 
        */
    }


    /*
        Like other languages (C, C++, JS), there is "if else" statement in solidity.
        Here is how to use:

        if(controls) {
            //codes
        } else if (controls) {
            //codes
        } else if (contols) {
            //codes
        } else {
            //codes
        }
    */

    
    // Here is the Logical Operators
    /*
        x == y   --> x is equal to y
        x != y   --> x is not equal to y
        x < y    --> x is less than y
        x <= y   --> x is less than or equal to y
        x > y    --> x is greater than y
        x >= y   --> x is greater than or equal to y
    
        x && y   --> the AND operator -- true if both x and y are true
        x || y   --> the OR operator -- true if either x or y (or both) are true
        !x       --> the NOT operator (negation) -- true if x is false

        (x > 0 && y > 0 && z > 0)  -->  all three of (x, y, z) are positive
        (x < 0 || y < 0 || z < 0)  -->  at least one of the three variables is negative
    */


}
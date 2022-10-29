//SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.0;

contract Functions {

    // Public: We can access from everywhere to this functions
    // Private: We can not see this function from outside of this contract, but we can call it inside the contract
    // Internal: We can not access this function 
    // External: We can not this function inside of the this contract. Just outside.

    function funcPublic() public pure returns(string memory) {
        return "This is an public function.";
    }

    function callPublic() public pure returns(string memory) {
        return funcPublic();
    }

    // Below function will not seeable from outside. 
    function funcPrivate() private pure returns(string memory) {
        return "This is a private func.";
    }

    function callPrivate() public pure returns(string memory) {
        return funcPrivate();
    }

    function funcInternal() internal pure returns(string memory) {
        return "This is a internal func.";
    }

    function callInternal() public pure returns(string memory) {
        return funcInternal();
    }

    function funcExternal() external pure returns(string memory) {
        return "This is a external func.";
    }

    // When we compile the below function. It'll get an error says: Undeclared identifier. Did you mean .... 
    // Because we declared the funcExternal as "external". So, we can not access this function from inside of the same contract. Just external 
    function callExternal() public pure returns(string memory) {
        return funcExternal();
    }
}
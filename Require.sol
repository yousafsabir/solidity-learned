// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract Require {
    // require is a little if else condition where you raise an error if
    // the condition is false

    function throwRequiredError() external {
        require(false, "This will throw the error");
    }
}

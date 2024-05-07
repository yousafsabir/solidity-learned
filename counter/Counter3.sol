
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

contract Counter {
    // Don't need to assign value via constructor if the value is not an argument
    uint public count = 0;

    function incCount() public {
        count += 1;
    }
}
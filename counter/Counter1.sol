// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract Counter {
    uint count;

    constructor () {
        count = 0;
    }

    function getCount() public view returns(uint) {
        return count;
    }

    function incCount() public {
        count = count + 1;
    }
}
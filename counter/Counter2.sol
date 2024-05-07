// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract Counter {
    // making count public so solidity creates a getter function for us automatically
    uint public count;

    constructor () {
        count = 0;
    }

    function incCount() public {
        count += 1;
    }
}
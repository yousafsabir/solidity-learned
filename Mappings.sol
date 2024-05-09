// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract Mappings {
    // A mapping a key-value pair data storage
    mapping(int => string) public intToStringMapping;

    function set(int key, string memory val) external {
        intToStringMapping[key] = val;
    }

    function get(int key) external view returns (string memory) {
        return intToStringMapping[key];
    }

    function remove(int key) external {
        delete intToStringMapping[key];
    }

    // There is no way of knowing that if a key exists in a mapping
}

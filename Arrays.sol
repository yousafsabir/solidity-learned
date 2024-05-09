// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract Arrays {
    // list of homogenous data where individual data is accessed by an index
    int[] listOfIntegers;

    // we can also specify the size of the array
    string[10] listOf10Strings;
    address[5] listOf5Addresses;

    // this is how we initialize an array
    uint[] listOfUIntegers = [1, 2, 3, 4];

    function getElement(uint idx) external view returns (int) {
        return listOfIntegers[idx];
    }

    function addElement(int v) external {
        listOfIntegers.push(v);
    }

    function getLength() external view returns (uint) {
        return listOfIntegers.length;
    }

    function removeLast
}

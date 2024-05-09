// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract Arrays {
    // list of homogenous data where individual data is accessed by an index
    int256[] public listOfIntegers;

    // we can also specify the size of the array
    string[10] listOf10Strings;
    address[5] listOf5Addresses;

    // this is how we initialize an array
    uint256[] listOfUIntegers = [1, 2, 3, 4];

    function getElement(uint256 idx) external view returns (int256) {
        return listOfIntegers[idx];
    }

    function addElement(int256 v) external {
        listOfIntegers.push(v);
    }

    function getLength() external view returns (uint256) {
        return listOfIntegers.length;
    }

    function removeLastElement() external {
        listOfIntegers.pop();
    }

    function removeAtIndex(uint256 index) external {
        if (index >= listOfIntegers.length) return;

        for (uint256 i = index; i < listOfIntegers.length - 1; i++) {
            listOfIntegers[i] = listOfIntegers[i + 1];
        }
        listOfIntegers.pop();
    }
}

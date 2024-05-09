// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

// 1️⃣ Make a contract called Calculator ✅
// 2️⃣ Create Result variable to store result ✅
// 3️⃣ Create functions to add, subtract, multiply & divide the result ✅
// 3️⃣ Create a reset function that sets the result back to 0 ✅

contract Calculator {
    int256 public result = 0;

    function add(int256 a) public {
        result += a;
    }

    function subtract(int256 a) public {
        result -= a;
    }

    function multiply(int256 a) public {
        result *= a;
    }

    function divide(int256 a) public {
        result /= a;
    }

    function reset() public {
        result = 0;
    }
}
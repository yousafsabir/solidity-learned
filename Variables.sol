// SPDX-License-Identifier: MIT
// SPDX -> Software Package Data Exchange
pragma solidity ^0.8.19;

contract Variables {
    // * State Variables
    // State variables are the top level variables in a contract that gets saved
    // on the blockchain. these variables have a scope throughout the contract
    uint constant public stateVar = 2;
    uint abc = 1 days;

    // * Local Variables
    // Variables declared inside a function body are local variables. once the
    // function finishes execution, they're gone

    function stateVarModulas() pure public returns (uint) {
        uint modulas = stateVar % 2;
        return modulas;
    }

    // * Data Types

    // * Booleans
    // denoted by 'bool' keyword. holds true or false values
    // Logical Operators
    // - && (And)
    // - || (Or)
    // - ! (Not)
    // - == (Equals to)
    // - != (Not equal to)

    // * Integers
    // There are signed and unsigned integers represented by int & uint keywords.
    // by default, both int & uint occupy 256 bits. but you can be specific with
    // the occupation size by postfixing the type with a divisible of 8
    // uint8, uint16, uint24, uint32, ... uint256
    // int8, int16, int24, int32, ... int256
    // - comparison, bitwise, shifts & arithmatic operators are applied on integers


    // * Strings
    // There are regualar strings. And there are strings stored in bytes format
    string aString = "Hello World!";
    bytes32 bytesString = "Hello World!";
    // similar with the integers, you can control 

    // * Adresses
    // address is a variable that holds a 20 byte eth address
    address myAddress = 0xf1A6Ecf3Ef03B38C12afBD6Ff16fE7e869B7a282;


    // * Structs
    // structs are like collection of variables of different types
    struct AStruct {
        uint a;
        string b;
    }

    AStruct public aStruct = AStruct(1, "Hello There");
}


// A new 4 hours course that I have to complete tomorrow
// https://www.youtube.com/watch?v=AYpftDFiIgk
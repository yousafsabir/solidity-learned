// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract FunctionVisibility {
    // * public
    // means this function can be used both internally and externally by everyone.

    // * private
    // can only be used within the contract

    // * internal
    // can only be used by the parent contract & the child contracts. not from outside

    // * external
    // can only by used from outside. saves the gas fee
}
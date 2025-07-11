// SPDX-License-Identifier: MIT

pragma solidity ^0.8.9;

contract BasicSyntax {
    uint storedData;

    
    //melakukan set data
    function set(uint x) public {
        storedData = x;
    }

    //menampilkan data
    function get() public view returns (uint) {
        return storedData;
    }

}
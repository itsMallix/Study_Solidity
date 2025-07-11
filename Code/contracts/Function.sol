// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract HelloWorld{
    uint hasil;
    
    //pure hanya meretrun 1 value tanpa modif state variable
    function cetakHello() public pure returns(string memory) {
        return "Hello World";
    }

    function tambah(uint a, uint b) public {
        //lokal
        uint temp = a + b;
        hasil = temp;
    }

    function getHasil() public view returns(uint){
        return hasil;
    }
}

//payable memungkinkan sc kita bisa menerima dan tf currency

contract PayableContract {
    uint receivedAmount;
    
    function receivedEther() public payable {
        receivedAmount = msg.value;
    }

    function getTotalAmount() public view returns (uint){
        return receivedAmount;
    }

    //overloading bisa mmiliki fungsi yang sama namun paramnya beda, namun pada function tidak boleh return
    function tambah(uint a, uint b) public pure returns(uint hasil){
        hasil = a + b;
    }

    function tambah(uint a, uint b, uint c) public pure returns(uint hasil){
        hasil = a + b + c;
    }

}
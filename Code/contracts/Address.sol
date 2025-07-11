// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract AddressContract {
    // address payable
    // ada sub send dan transfer

    // cara 1
    // address public caller;

    // function getCallerAddress() public returns(address){
    //     caller = msg.sender;
    //     return caller;
    // }

    // cara 2 lihat wallet addres
    // function getCallerAddres() public view returns(address caller){
    //     caller = msg.sender;
    // }

    uint receiveAmount;

    // cara 3 untuk lihat contract address
    function getCallerAddress() public view returns(address){
        address myAddress = address(this);
        return myAddress;
    }

    function receiveEther() public payable {
        receiveAmount = msg.value;
    }

    //address payable
    // jika pakai send return error akan boolean jika transfer returnnya stop exec
    function transferFund(address payable _address, uint nominal) public {
        _address.transfer(nominal);
    }

    function sendFund(address payable _address, uint nominal) public returns(bool) {
        _address.send(nominal);
        
    }

}


// setiap akun dan kontrak pasti memiliki adress 20 bytes
// digunakan untuk send and receive ether atau transaksi
// address == nomor.rekening
// smart contract memiliki address tersendiri
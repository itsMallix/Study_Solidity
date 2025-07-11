// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract VariableTypes{
    uint sum; // state var


    function tambah(uint num1, uint num2) public {
        uint temp = num1 + num2;
        sum = temp;
    }

    function getHasil() public view returns (uint){
        return sum;
    }
}

contract Types {
    bool public valid = true;
    int32 public num1 = -32;
    uint8 public num2 = 104;

    uint public ui_data = 5_02_2025;

    uint8 result;

    function tambah() public {
        // result = 3/5 solidity gaada float
        result = 3.5 + 4.5; // hasilnya akan menjadi bilangan bulat
    }

    //byte dugunakan untuk menghitung karakter yang hitungannya tetap 1-32 jika lebih maka pakai string
    bytes1 public huruf = "A";
    string public kalimat = "ini adlaah data string";

    //enum adalah sebuah cara untuk menentapkan tipe yang bisa ditentukan oleh pengguna

}

contract enumSaya{
    enum Weeks {sun, mon, tue, wed, thr, fri, sat}

    function getEnum() public pure returns(Weeks) {
        return Weeks.sun;
    }
}



// state variable adalah variabel yang bisa digunakan secara permanen
//

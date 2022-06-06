// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract SimpleStorage {

    uint256 favNumber;

    struct Person {
        string name;
        uint256 favNumber;
    }

    Person[] public getPersonAndNumber;

    mapping(string => uint256) public getPersonNumber;

    function setPerson(string memory _name, uint256 _favNumber) public {
        getPersonAndNumber.push(Person(_name, _favNumber));
        getPersonNumber[_name] = _favNumber;
    }

    function setFavoriteNumber(uint256 _favNumber) public {
        favNumber = _favNumber;
    }

    function getFavoriteNumber() public view returns (uint256) {
        return favNumber;
    }
}

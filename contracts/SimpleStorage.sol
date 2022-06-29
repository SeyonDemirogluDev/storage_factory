// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract SimpleStorage {

    uint256 public favoriteNumber;

    struct Person {
        string name;
        uint256 favoriteNumber;
    }

    Person[] public getPersonAndNumber;

    mapping(string => uint256) public getPersonNumber;

    function setPerson(string memory _name, uint256 _favoriteNumber) external {
        getPersonAndNumber.push(Person(_name, _favoriteNumber));
        getPersonNumber[_name] = _favoriteNumber;
    }

    function setFavoriteNumber(uint256 _favoriteNumber) external {
        favoriteNumber = _favoriteNumber;
    }

    // getFN => uint256
}

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract SimpleStorage {

    uint256 private _favoriteNumber;

    struct Person {
        string name;
        uint256 _favoriteNumber;
    }

    Person[] public getPersonAndNumber;

    mapping(string => uint256) public getPersonNumber;

    function setPerson(string memory _name, uint256 favoriteNumber) external {
        getPersonAndNumber.push(Person(_name, favoriteNumber));
        getPersonNumber[_name] = favoriteNumber;
    }

    function setFavoriteNumber(uint256 favoriteNumber) internal {
        _favoriteNumber = favoriteNumber;
    }

    function getFavoriteNumber() internal view returns (uint256) {
        return _favoriteNumber;
    }
}

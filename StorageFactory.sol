// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

import "./SimpleStorage.sol";

contract StorageFactory {

    SimpleStorage[] public getSimpleStorageContract;
    
    function setSimpleStorageContract() public {
        SimpleStorage simpleStorage = new SimpleStorage();
        getSimpleStorageContract.push(simpleStorage);
    }
    
    function setSFNumber(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public {
        getSimpleStorageContract[_simpleStorageIndex].setFavoriteNumber(_simpleStorageNumber);
    }
    
    function getSFNumber(uint256 _simpleStorageIndex) public view returns (uint256) {
        return getSimpleStorageContract[_simpleStorageIndex].getFavoriteNumber();
    }
}
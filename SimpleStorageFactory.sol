// SPDX-License-Identifier: Unlicense

pragma solidity ^0.8.0;

import "./SimpleStorage.sol";

contract SimpleStorageFactory {

    SimpleStorage[] public getSimpleStorageContract;
    
    function setSimpleStorageContract() external {
        SimpleStorage simpleStorage = new SimpleStorage();
        getSimpleStorageContract.push(simpleStorage);
    }
    
    function setStorageFactoryNumber(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) external {
        getSimpleStorageContract[_simpleStorageIndex].setFavoriteNumber(_simpleStorageNumber);
    }
    
    function getStorageFactoryNumber(uint256 _simpleStorageIndex) external view returns (uint256) {
        return getSimpleStorageContract[_simpleStorageIndex].getFavoriteNumber();
    }
}

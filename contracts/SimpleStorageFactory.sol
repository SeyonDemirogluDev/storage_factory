// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "./SimpleStorage.sol";

contract SimpleStorageFactory {

    SimpleStorage[] public contracts;
    
    function setSimpleStorageContract() external {
        SimpleStorage simpleStorage = new SimpleStorage();
        contracts.push(simpleStorage);
    }
    
    function setStorageFactoryNumber(uint256 simpleStorageIndex, uint256 simpleStorageNumber) external {
        contracts[_simpleStorageIndex].setFavoriteNumber(_simpleStorageNumber);
    }
    
    function getStorageFactoryNumber(uint256 contractSimpleStorageIndex) external view returns (uint256) {
        return contracts[_contractSimpleStorageIndex].getFavoriteNumber();
    }
}

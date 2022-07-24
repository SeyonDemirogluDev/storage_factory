contract SimpleStorage {

    uint256 private _favoiteNum;

    struct Person {
        string name;
        uint256 _favoiteNum;
    }

    Person[] public getPersonAndNum;

    mapping (string => uint256) public getPersonNum;

    function setPerson(string memory _name, uint256 favoriteNum) external {
        getPersonAndNum.push(Person(_name, favoriteNum));
        getPersonNum[_name] = favoriteNum;
    }

    function getFavoriteNum() external view returns (uint256) {
        return _favoiteNum;
    }

    function setFavoriteNum(uint256 favoriteNum) external {
        _favoiteNum = favoriteNum;
    }
}

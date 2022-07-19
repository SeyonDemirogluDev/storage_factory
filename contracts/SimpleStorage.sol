contract SimpleStorage {

    uint256 public favoriteNum;

    struct Person {
        string name;
        uint256 favoriteNum;
    }

    Person[] public getPersonAndNum;

    mapping (string => uint256) public getPersonNum;

    function setPerson(string memory _name, uint256 _favoriteNum) external {
        getPersonAndNum.push(Person(_name, _favoriteNum));
        getPersonNum[_name] = _favoriteNum;
    }

    function setFavoriteNum(uint256 _favoriteNum) external {
        favoriteNum = _favoriteNum;
    }
}

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0; //Updated to use latest compiler version, "pragma solidity >=0.8.0 <0.9.0;"

contract SimpleStorage {

    /**
     * @dev samdimek
     * @notice A smart contract to allow users to store their favorite numbers. Favorite numbers could be birthdays or other combinations.
     */

    uint256 favoriteNumber; 

    struct People {
        uint256 favoriteNumber;
        string name;
    }

    People[] public people;     // uint256[] public anArray;

    mapping(string => uint256) public nameToFavoriteNumber;

    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }
    
    function retrieve() public view returns (uint256){
        return favoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        people.push(People(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}

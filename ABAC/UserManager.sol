// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "./Interfaces/IUserManager.sol";

contract UserManager is IUserManager{
    mapping(address => User) users;
    //define user struct
    struct User {
        address userAddr;
        mapping(string => bool) attrs; //The attr of the user;
        string userName;
        uint securityClearance;
    }

    function checkUserExists(address user) public view returns(bool) {
        return users[user].userAddr != address(0);
    }

    function addUser(address user) external override {
        if (!checkUserExists(user)) {
            User storage newUser = users[user];
            newUser.userAddr = user;
        }        
    }

    function deleteUser(address user) external override {
        if (checkUserExists(user)) {
            users[user].userAddr = address(0);
        }   
    }

    function getUserName(address user) external view returns(string memory) {
        require(checkUserExists(user), "user is not exist");
        return users[user].userName;
    }

    function grantAttr(address user, string calldata attrs) external override{
        
    }

    function revokeAttr(address user, string calldata attrs) external override {
        
    }

    function hasAttr(address user, string calldata attrs) external view returns (bool) {

    }
}
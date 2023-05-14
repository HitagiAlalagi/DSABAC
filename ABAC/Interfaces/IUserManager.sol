// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


interface IUserManager {
    function addUser(address user) external;
    function deleteUser(address user) external;
    function grantRole(address user, string calldata role) external;
    function revokeRole(address user, string calldata role) external;
    function hasRole(address user, string calldata role) external view returns (bool);
    function updateSecurityClearance(address user, uint256 newLevel) external;
    function getSecurityClearance(address user) external view returns(uint256);
}
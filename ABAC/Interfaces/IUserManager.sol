// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

interface IUserManager {
    function addUser(address user) external;
    function deleteUser(address user) external;
    function grantAttr(address user, string calldata attrs) external;
    function revokeAttr(address user, string calldata attrs) external;
    function hasAttr(address user, string calldata attrs) external view returns (bool);
    function updateSecurityClearance(address user, uint256 newLevel) external;
    function getSecurityClearance(address user) external view returns(uint256);
}
// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

interface IPermissionManager {
    function checkPermission(address user, string calldata functionName, bytes[] memory arguments) external view returns (bool);
}
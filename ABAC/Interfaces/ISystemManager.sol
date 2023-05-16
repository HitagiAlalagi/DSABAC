// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

interface ISystemManager {
    function getCreationDate() view external returns (uint256);
    function getResourceOwner() view external returns (address);
    function getSensitivity() view external returns (uint);
}
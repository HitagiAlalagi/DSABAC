// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

interface IAttributeManager {
    function addAttribute(string memory attribute) external;
    function delAttribute(string memory attribute) external;
    function modifyAttribute() external;
}
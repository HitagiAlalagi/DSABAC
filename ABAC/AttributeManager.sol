// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "./Interfaces/IAttributeManager.sol";

contract AttributeManager is IAttributeManager{

    //define inner attrubute group 
    mapping (string => string) private attrGroup;

    //prop event add/set/remove attribute
    event SystemAttributeAdded(string attribute);
    event SystemAttributeSet(string attribute, string value);
    event SystemAttributeRemoved(string attribute);

    function addAttribute(string memory attribute) public override{
        require(bytes(attrGroup[attribute]).length == 0, "Attribute already exists");
        attrGroup[attribute] = "";
        emit SystemAttributeAdded(attribute);
    }

    function getAttribute(string memory attribute) public view returns (string memory) {
        return attrGroup[attribute];
    }

    function setSystemAttribute(string memory attribute, string memory value) public {
        attrGroup[attribute] = value;
        emit SystemAttributeSet(attribute, value);
    }

    function delAttribute(string memory attribute) public override{
        require(bytes(attrGroup[attribute]).length != 0, "Attribute does not exist");
        delete attrGroup[attribute];
        emit SystemAttributeRemoved(attribute);
    }

    //modify attr
    function modifyAttribute() external override{
        
    }

}
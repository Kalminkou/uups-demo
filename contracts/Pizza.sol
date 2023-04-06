    // SPDX-License-Identifier: MIT
    pragma solidity ^0.8.9;

import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/Ownable2StepUpgradeable.sol";

contract Pizza is Initializable, UUPSUpgradeable, OwnableUpgradeable {
    uint256 public slices;

    ///@dev no constructor in upgradeable contracts.
    ///@param _sliceCount initial number of slices for the pizza
    function initialize(uint256 _sliceCount) public initializer {
        slices = _sliceCount;

        ///@dev we need to initialize the OwnableUpgradeable explicitly
        __Ownable_init();

    }

    ///@dev required by OZ UUPS module
    function _authorizeUpgrade(address) internal override onlyOwner {}

    ///@dev decrements the slices when called
    function eatSlice() external {
        require(slices > 1, "No more slices");
        slices -= 1;
    }

}
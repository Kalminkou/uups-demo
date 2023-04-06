// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
import "./Pizza.sol";

contract PizzaV2 is Pizza {
    ///@dev increments the slice when called
    function refillSlice() external {
        slices += 1;
    }

    ///@dev returns the contract version
    function pizzaVersion() public pure returns (uint256) {
        return 2;
    }
}
// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

import {DSTestPlus} from "solmate/test/utils/DSTestPlus.sol";

contract SampleContractTest is DSTestPlus {

    function testFailFuzz(uint8 x) public {
        emit log("testFailFuzz");
        require(x == 5, "should revert");
    }

    function testSuccessfulFuzz(uint128 a, uint128 b) public {
        emit log("testSuccessfulFuzz");
        assertEq(uint256(a) + uint256(b), uint256(a) + uint256(b));
    }

    function testNegativeHalf(uint256 val) public {
        assertTrue(val < 2 ** 128 - 1);
    }

    function testNegativeMax(uint256 val) public {
        assertTrue(val != type(uint256).max);
    }

    function testPositive(uint256) public {
        assertTrue(true);
    }

    function testShrinking(uint256 x, uint256 y) public {
        require(x * y <= 100, "product greater than 100");
    }

}
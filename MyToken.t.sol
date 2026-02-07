// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {Test} from "forge-std/Test.sol";
import {MyToken} from "./MyToken.sol";

contract MyTokenTest is Test {
    MyToken public token;
    address public owner = address(1);
    uint256 public constant INITIAL_SUPPLY = 1000;

    function setUp() public {
        vm.prank(owner);
        token = new MyToken(INITIAL_SUPPLY);
    }

    function test_InitialSupply() public {
        assertEq(token.totalSupply(), INITIAL_SUPPLY * 10 ** token.decimals());
    }

    function test_BalanceOfOwner() public {
        assertEq(token.balanceOf(owner), INITIAL_SUPPLY * 10 ** token.decimals());
    }

    function test_Transfer() public {
        address receiver = address(2);
        uint256 amount = 100 * 10 ** token.decimals();

        vm.prank(owner);
        token.transfer(receiver, amount);

        assertEq(token.balanceOf(receiver), amount);
    }
}

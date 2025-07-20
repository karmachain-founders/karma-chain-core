// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./interfaces/iKarmaScore.sol";

contract KarmaScore is iKarmaScore {
    mapping(address => int256) private karma;
    mapping(address => bool) private admins;
    address public owner;

    modifier onlyAdmin() {
        require(admins[msg.sender], "Not an admin");
        _;
    }

    constructor() {
        owner = msg.sender;
        admins[msg.sender] = true;
    }

    function updateKarma(address user, int256 change) external override onlyAdmin {
        karma[user] += change;
    }

    function getKarma(address user) external view override returns (int256) {
        return karma[user];
    }

    function isAdmin(address admin) external view override returns (bool) {
        return admins[admin];
    }
}

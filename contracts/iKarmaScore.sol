// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./interfaces/iKarmaScore.sol";

interface iKarmaScore {
    function getKarma(address user) external view returns (int256);
    function isAdmin(address admin) external view returns (bool);
}




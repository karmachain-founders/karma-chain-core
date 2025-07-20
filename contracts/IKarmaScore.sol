// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

interface IKarmaScore {
    function updateKarma(address user, int256 change) external;
    function getKarma(address user) external view returns (int256);
    function setAdmin(address admin, bool status) external;
    function isAdmin(address admin) external view returns (bool);
}


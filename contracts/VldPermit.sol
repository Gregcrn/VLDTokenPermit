// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

/// @title A contract that implements ERC-2612 permit
/// @author GregCrn
/// @notice You can use this contract for implementing permit
/// @dev More info at https://eips.ethereum.org/EIPS/eip-2612

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/draft-ERC20Permit.sol";

contract VldPermit is ERC20, ERC20Permit {
    constructor() ERC20("TokenVld", "TKVLD") ERC20Permit("TokenVld") {
        _mint(msg.sender, 1000000000000000000000000); // mint 1,000,000 tokens to contract deployer
    }
}

// SPDX-License-Identifier: MIT

pragma solidity 0.6.5;

import "@openzeppelin/contracts/presets/ERC20PresetMinterPauser.sol";


contract POLSL is ERC20PresetMinterPauser {

    constructor() public ERC20PresetMinterPauser("POLS Lottery Ticket Claim", "POLSL") {
        uint256 initialSupply = 10000 * (uint256(10) ** decimals());
        _mint(msg.sender, initialSupply);  // mint an initial supply
    }

}
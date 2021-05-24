// SPDX-License-Identifier: MIT

pragma solidity 0.6.5;

import "@openzeppelin/contracts/presets/ERC20PresetMinterPauser.sol";


contract POLSltc is ERC20PresetMinterPauser {

    constructor() public ERC20PresetMinterPauser("POLS Lottery Ticket Claim", "POLSltc") {
        uint256 initialSupply = 10000 * (uint256(10) ** decimals());
        _mint(msg.sender, initialSupply);
    }

}
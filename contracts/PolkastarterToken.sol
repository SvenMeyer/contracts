// SPDX-License-Identifier: MIT

pragma solidity 0.6.5;

import "@openzeppelin/contracts/token/ERC20/ERC20Pausable.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20Capped.sol";


contract PolkastarterToken is ERC20Pausable, ERC20Capped {
    string private _name = "PolkastarterToken";
    string private _symbol = "POLS";
    // uint8 public decimals = 18;
    // address public distributionContractAddress;
    // 100 Million <---------|   |-----------------> 10^18
    uint256 constant TOTAL_CAP = 100000000 * 1 ether;

    constructor() public ERC20(_name, _symbol) ERC20Capped(TOTAL_CAP) {
        _mint(msg.sender, TOTAL_CAP);
    }

    function _beforeTokenTransfer(address from, address to, uint256 amount) internal virtual override(ERC20Pausable, ERC20Capped) {
        super._beforeTokenTransfer(from, to, amount);
    }
}
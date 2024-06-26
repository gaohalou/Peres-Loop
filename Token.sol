// 0.5.1-c8a2
// Enable optimization
pragma solidity ^0.8.11;

import "./PRS20.sol";
import "./PRS20Detailed.sol";

/**
 * @title SimpleToken
 * @dev Very simple PRS20 Token example, where all tokens are pre-assigned to the creator.
 * Note they can later distribute these tokens as they wish using `transfer` and other
 * `PRS20` functions.
 */
contract Token is PRS20, PRS20Detailed {

    /**
     * @dev Constructor that gives msg.sender all of existing tokens.
     */
    constructor () public PRS20Detailed("Peres", "PRS", 18) {
        _mint(msg.sender, 10000000000 * (10 ** uint256(decimals())));
    }
}

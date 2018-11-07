pragma solidity ^0.4.19;

import "zeppelin-solidity/contracts/token/ERC20/StandardToken.sol";
import "zeppelin-solidity/contracts/ownership/Ownable.sol";

contract BearToken is StandardToken, Ownable {
    uint256 public totalSupply;
    string public name;
    string public symbol;
    uint32 public decimals;

    constructor() public {
        symbol = "BEAR";
        name = "BearToken";
        decimals = 5;
        totalSupply = 100000000000;

        owner = msg.sender;
        balances[msg.sender] = totalSupply;

        emit Transfer(0x0, msg.sender, totalSupply);
    }

}

pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract Amar is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function Amar(address _owner)  UpgradeableToken(_owner) {
    name = "Amar";
    symbol = "Amr";
    totalSupply = 100000000000;
    decimals = 5;

    balances[_owner] = totalSupply;
  }
}
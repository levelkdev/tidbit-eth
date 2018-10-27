pragma solidity ^0.4.24;

import "../../Oracles/PaidOracle.sol";

contract PaidOracleMock is PaidOracle {

  constructor(address _dataSource, uint256 _reward) public payable {
    PaidOracle.initialize(_dataSource, _reward);
  }

}

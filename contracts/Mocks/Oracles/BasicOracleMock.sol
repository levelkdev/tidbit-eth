pragma solidity ^0.4.24;

import "../../Oracles/BasicOracle.sol";

contract BasicOracleMock is BasicOracle {

  constructor(address _dataSource) public {
    BasicOracle.initialize(_dataSource);
  }

}

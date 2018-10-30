pragma solidity ^0.4.24;

import "../../Oracles/SignedOracle.sol";

contract SignedOracleMock is SignedOracle {

  constructor(address _dataSource) public {
    SignedOracle.initialize(_dataSource);
  }

}

pragma solidity ^0.4.24;

import "../../PushOracles/SignedPushOracle.sol";

contract SignedPushOracleMock is SignedPushOracle {

  constructor(address _dataSource, IOracleConsumer _consumer) public {
    SignedPushOracle.initialize(_dataSource, _consumer);
  }

}

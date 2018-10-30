pragma solidity ^0.4.24;

import "../../PushOracles/BasicPushOracle.sol";

contract BasicPushOracleMock is BasicPushOracle {

  constructor(address _dataSource, IOracleConsumer _consumer) public {
    BasicPushOracle.initialize(_dataSource, _consumer);
  }

}

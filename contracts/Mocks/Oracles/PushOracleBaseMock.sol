pragma solidity ^0.4.24;

import "../../PushOracles/PushOracleBase.sol";

contract PushOracleBaseMock is PushOracleBase {

  constructor(IOracleConsumer _consumer, uint unusedParam) public {
    PushOracleBase.initialize(_consumer, unusedParam);
  }

}

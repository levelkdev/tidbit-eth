pragma solidity ^0.4.24;

import "../../Oracles/MedianOracle.sol";

contract MedianOracleMock is MedianOracle {

  constructor(IOracle[] _oracles) public {
    MedianOracle.initialize(_oracles);
  }

}

pragma solidity ^0.4.24;

import "../../Oracles/MultiOracle.sol";

contract MultiOracleMock is MultiOracle {

  constructor(address _sender) public {
    MultiOracle.initialize(_sender);
  }

}

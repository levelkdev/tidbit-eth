pragma solidity ^0.4.24;

import "../../Oracles/SignedMultiOracle.sol";

contract SignedMultiOracleMock is SignedMultiOracle {

  constructor(address _sender) public {
    SignedMultiOracle.initialize(_sender);
  }

}

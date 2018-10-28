pragma solidity ^0.4.24;

import "../../Oracles/PaidMultiOracle.sol";

contract PaidMultiOracleMock is PaidMultiOracle {

  constructor(uint256 _reward, address _sender) public payable {
    PaidMultiOracle.initialize(_reward, _sender);
  }

}

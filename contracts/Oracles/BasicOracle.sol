pragma solidity ^0.4.24;

import "./OracleBase.sol";
import "zos-lib/contracts/Initializable.sol";

/**
 * @title BasicOracle
 * @dev Extends OracleBase to allow the result to be set by a single data source
 */
contract BasicOracle is Initializable, OracleBase {

  // The address that is able to set the result
  address public dataSource;

  /**
   *  @dev BasicOracle constructor
   *  @param _dataSource The address that is able to set the result
   */
  function initialize(address _dataSource) initializer public {
    dataSource = _dataSource;
  }

  /**
   * @dev Sets the result of the oracle
   * @param _result The result being set
   */
  function setResult(bytes _result) public {
    require(msg.sender == dataSource, "The caller is not the data source.");
    _setResult(_result);
  }

}

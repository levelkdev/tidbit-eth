
require('babel-register')
require('babel-polyfill')

const HDWalletProvider = require("truffle-hdwallet-provider");
const secrets = require('./secrets.json');

module.exports = {
  networks: {
    development: {
      host: 'localhost',
      port: 8545,
      network_id: '*', // Match any network id
      gas: 6000000,
      gasPrice: 0x01
    },
    coverage: {
      host: 'localhost',
      network_id: '*',
      port: 8546,
      gas: 0xfffffffffff,
      gasPrice: 0x01
    },
    ropsten: {
      provider: function() {
        return new HDWalletProvider(secrets.mnemonic, "https://ropsten.infura.io/<secrets.infura_apikey>")
      },
      network_id: 3
    }   
  }
}

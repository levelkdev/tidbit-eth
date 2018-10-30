import { encodeCall } from 'zos-lib'

const PushOracleBase = artifacts.require('PushOracleBaseMock')

require('chai').should()

contract('PushOracleBase', (accounts) => {
  const consumer = accounts[2]

  it('is initialized with the correct state', async () => {
    const oracle = await PushOracleBase.new(consumer, 0)
    const consumerOnChain = await oracle.consumer()
    consumer.should.equal(consumerOnChain)
  })

})

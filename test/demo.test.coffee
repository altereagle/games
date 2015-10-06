chai   = require('chai')
should = chai.should()

###
  Dependencies
###
describe "Demo: Testing", ->
  it "should run a test", (done)->
    true.should.equal true
    done()
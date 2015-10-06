chai   = require('chai')
should = chai.should()

###
  Dependencies
###
Browser  = require 'zombie'
settings =
  site : "http://s.codepen.io/altereagle/debug/rOmGEp"
  title: "My title"

browser = new Browser()

describe "Example 1: HTML Elements", ->

  it "should visit #{settings.site}", (done)->
    browser.visit settings.site, done

  it "should have visted #{settings.site} successfully", (done)->
    browser.assert.success()
    done()

  it "should have a title", (done)->
    browser.assert.element "#title"
    done()

  it "should have a hello world message", (done)->
    browser.assert.text "#message", "Hello World"
    done()


  it "should have an image", (done)->
    browser.assert.element "img"
    done()

  it "should have a footer", (done)->
    browser.assert.element "#footer"
    done()
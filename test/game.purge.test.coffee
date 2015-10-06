chai   = require('chai')
should = chai.should()

###
  Dependencies
###
Browser  = require 'zombie'
settings =
  site : "http://s.codepen.io/tjg30rg3/debug/VvjoeE?"

browser = new Browser()

describe "Game - Purge: Title", ->

  it "should visit #{settings.site}", (done)->
    browser.visit settings.site, done

  it "should have a visted #{settings.site} successfully", (done)->
    browser.assert.success()
    done()

  it "should have a my-title element", (done)->
    browser.assert.element "my-title"
    done()

  it "should have say Purge in the tab", (done)->
    browser.assert.text "my-title", "Purge"
    done()

  it "should have a button with the class start", (done)->
    browser.assert.element "button.start"
    done()
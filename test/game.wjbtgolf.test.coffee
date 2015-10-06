chai   = require('chai')
should = chai.should()

###
  Dependencies
###
Browser  = require 'zombie'
settings =
  site : "http://codepen.io/JHUMPHRIES2002/debug/avmRKg"

browser = new Browser()

describe "Game - WJBT Golf: Title", ->

  it "should visit #{settings.site}", (done)->
    browser.visit settings.site, done

  it "should have a visted #{settings.site} successfully", (done)->
    browser.assert.success()
    done()

  it "should have a my-title element", (done)->
    browser.assert.element "my-title"
    done()

  it "should have say WJBT Golf", (done)->
    browser.assert.text "my-title", "WJBT Golf"
    done()

  it "should have a button with the class start", (done)->
    browser.assert.element "button.start"
    done()
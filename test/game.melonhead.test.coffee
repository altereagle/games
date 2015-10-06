chai   = require('chai')
should = chai.should()

###
  Dependencies
###
Browser  = require 'zombie'
settings =
  site : "http://s.codepen.io/iPanda/debug/KdNJaq"

browser = new Browser()

describe "Game - Melonhead: Title", ->

  it "should visit #{settings.site}", (done)->
    browser.visit settings.site, done

  it "should have a visted #{settings.site} successfully", (done)->
    browser.assert.success()
    done()

  it "should have a melonhead element", (done)->
    browser.assert.element "melonhead"
    done()

  it "should have say MelonHead", (done)->
    browser.assert.text "melonhead", "MelonHead"
    done()

  it "should have a button with the class start", (done)->
    browser.assert.element "button.start"
    done()
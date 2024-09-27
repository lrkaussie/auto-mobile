require_relative '../../support/env.rb'
#
# Base page helper to incapsulate work with driver.
#
# Contains basic actions with driver
#
class BasePage

  attr_reader :driver

  def initialize(driver)
    @driver = driver
  end

  def visit(url)
    driver.get(url)
  end

  def find(locator, browser=driver)
    browser.find_element locator
  end

  def find_all(locator, browser=driver)
    browser.find_elements locator
  end

  def clear(locator)
    find(locator).clear
  end

  def type(locator, input)
    element = find(locator)
    element.click
    `adb shell input text #{input}`
  end

  def submit(locator)
    element = find(locator)
    element.submit
  end

  def click_on(locator)
    find(locator).click
  end

  def title
    driver.title
  end

  def text_of(locator, browser=driver)
    find(locator, browser).text
  end

  def press_keycode(code)
    driver.press_keycode(code);
  end

  def submit_by_keyboard
    press_keycode(66)
  end

end

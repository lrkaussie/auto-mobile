require 'cucumber'
require 'appium_lib'
require 'pry'
require 'rspec/expectations'

desired_caps = {
    caps: {
        platformName:  'Android',
        deviceName:    'emulator-555',
        platformVersion: "11.0",
        udid: '1cf8ca6122047ece',
        browserName: 'Chrome'
    }
}
@driver = Appium::Driver.new(desired_caps,true).start_driver
Appium.promote_appium_methods Object
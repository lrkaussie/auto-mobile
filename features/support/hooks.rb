Before do
  @driver = $driver
  @driver.start_driver
end

Before do|scenario|
  ENV['HTTP_PROXY'] = ENV['http_proxy'] = nil
end

After do
  @driver.driver.quit
end

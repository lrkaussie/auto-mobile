require_relative '../helpers/base_page'
#
# cottonon.com start page
#
class MainPage < BasePage

  SEARCH_FIELD     = { class: 'mobile-tablet-input-field' }

  # attr_reader :driver

  def initialize(driver)
    super
    visit('https://ci.cottonon.com/AU/')
  end

  def search_item(keyword)
    type SEARCH_FIELD, (keyword)
    submit_by_keyboard
  end

end

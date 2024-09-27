require_relative '../helpers/base_page'
#
# Page that opened after user search for keyword
#
class SearchResultPage < BasePage

  SEARCH_RESULT_ITEMS  = { css: "ul#search-result-items > li" }
  SEARCH_RESULT_TEXT   = { css: "div.search-result-text"      }
  PRODUCT_NAME         = { css: "div.product-name"            }
  PRODUCT_BRAND        = { css: "div.product-brand"           }
  PRODUCT_PRICE        = { css: "div.product-pricing"         }

  attr_reader :driver

  def initialize(driver)
    super
  end

  # method that get all found items as webdriver objects from search result first page
  def search_result
    find_all SEARCH_RESULT_ITEMS
  end

  # method that transform all collected items webdriver objects into hash
  def get_search_result
    # binding.pry
    items = search_result
    items.map { |item|
      {
          name: text_of(PRODUCT_NAME, item),
          brand: text_of(PRODUCT_BRAND, item),
          price: text_of(PRODUCT_PRICE, item)
      }
    }
  end
end

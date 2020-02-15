require 'page-object'
require 'page-object/page_factory'
require 'rspec'
require 'watir'
require 'watir-scroll'

##
# Formatter
##
require 'cucumber/formatter/json'
require 'uuid'

module Skinny
  module Formatter
    class Json < Cucumber::Formatter::Json
      def on_test_run_finished(_event)
        @feature_hashes = {
          id: UUID.generate,
          date: Time.now.strftime('%Y-%m-%d %H:%M'),
          features: @feature_hashes
        }
        super(_event)
      end
    end
  end
end

browser = Watir::Browser.new :chrome

World(PageObject::PageFactory)
Before do 
  @browser = browser
end


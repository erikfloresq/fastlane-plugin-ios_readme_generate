module Fastlane
  module Helper
    class IosReadmeGenerateHelper
      # class methods that you define here become available in your action
      # as `Helper::IosReadmeGenerateHelper.your_method`
      #
      def self.show_message
        UI.message("Hello from the ios_readme_generate plugin helper!")
      end
    end
  end
end

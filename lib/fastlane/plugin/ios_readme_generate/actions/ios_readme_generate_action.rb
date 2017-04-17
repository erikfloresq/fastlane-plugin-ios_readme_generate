module Fastlane
  module Actions
    class IosReadmeGenerateAction < Action
      def self.run(params)

        ios_readme_generate = Helper::IosReadmeGenerateHelper.new

        ios_readme_generate.trigger(options: params, mockAttr: params[:mock])

      end

      def self.description
        "Create readme for ios projects :D"
      end

      def self.authors
        ["Erik Flores"]
      end

      def self.return_value
        # If your method provides a return value, you can describe here what it does
      end

      def self.details
        # Optional:
        "Create readme for ios projects"
      end

      def self.available_options
        [
          # FastlaneCore::ConfigItem.new(key: :your_option,
          #                         env_name: "IOS_README_GENERATE_YOUR_OPTION",
          #                      description: "A description of your option",
          #                         optional: false,
          #                             type: String)
        ]
      end

      def self.is_supported?(platform)
        # Adjust this if your plugin only works for a particular platform (iOS vs. Android, for example)
        # See: https://github.com/fastlane/fastlane/blob/master/fastlane/docs/Platforms.md
        #
        # [:ios, :mac, :android].include?(platform)
        true
      end
    end
  end
end

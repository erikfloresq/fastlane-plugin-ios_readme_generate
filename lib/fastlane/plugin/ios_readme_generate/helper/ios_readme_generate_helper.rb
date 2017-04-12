module Fastlane
  module Helper
    class IosReadmeGenerateHelper
      # class methods that you define here become available in your action
      # as `Helper::IosReadmeGenerateHelper.your_method`
      #
      attr_accessor :git_readme_generate

      def initialize
        self.git_readme_generate = "git-readme-generate"
      end

      def trigger(options: nil, print_command: true, print_command_output: true)
        app_name = options[:app_name]
        app_id = options[:app_id]
        app_version = options[:app_version]
        build = options[:build]
        language = options[:language]
        deployment_target = options[:deployment_target]
        file_destination = options[:file_destination]
        command = [self.git_readme_generate,
                  "--app_name #{app_name}",
                  "--app_id #{app_id}",
                  "--app_version #{app_version}",
                  "--build #{build}",
                  "--language #{language}",
                  "--deployment_target #{deployment_target}",
                  "--file #{file_destination}"].compact.join(" ")
        Action.sh(command,
                  print_command: print_command,
                  print_command_output: print_command_output)
      end

      def self.show_message
        UI.message("Hello from the ios_readme_generate plugin helper!")
      end
    end
  end
end

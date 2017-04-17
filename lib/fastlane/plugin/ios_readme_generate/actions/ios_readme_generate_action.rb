module Fastlane
  module Actions
    class IosReadmeGenerateAction < Action
      def self.run(params)

        app_name = params[:app_name]
        app_id = params[:app_id]
        app_version = params[:app_version]
        build = params[:build]
        language = params[:language]
        deployment_target = params[:deployment_target]
        file_destination = params[:file_destination]

        command = ["ios-readme-generator",
                  "--app_name #{app_name}",
                  "--app_id #{app_id}",
                  "--app_version #{app_version}",
                  "--build #{build}",
                  "--language #{language}",
                  "--deployment_target #{deployment_target}",
                  "--file #{file_destination}"].compact.join(" ")
        Action.sh(command,
                  print_command: true,
                  print_command_output: true)

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
           FastlaneCore::ConfigItem.new(key: :app_name,
                                   env_name: "IOS_README_APP_NAME",
                                description: "Add the name of the app",
                                   optional: true,
                                       type: String),
           FastlaneCore::ConfigItem.new(key: :app_id,
                                   env_name: "IOS_README_APP_ID",
                                description: "Add the ID of the app",
                                   optional: true,
                                       type: String),
           FastlaneCore::ConfigItem.new(key: :app_version,
                                   env_name: "IOS_README_APP_VERSION",
                                description: "Add the App Version of the app",
                                   optional: true,
                                       type: String),
           FastlaneCore::ConfigItem.new(key: :build,
                                   env_name: "IOS_README_BUILD",
                                description: "Add the build of the app",
                                   optional: true,
                                       type: String),
           FastlaneCore::ConfigItem.new(key: :language,
                                   env_name: "IOS_README_LANGUAGE",
                                description: "Add the language with development the app",
                                   optional: true,
                                       type: String),
           FastlaneCore::ConfigItem.new(key: :deployment_target,
                                   env_name: "IOS_README_DEPLOYMENT_TARGET",
                                description: "Add the deployment of the app",
                                   optional: true,
                                       type: String),
           FastlaneCore::ConfigItem.new(key: :file_destination,
                                   env_name: "IOS_README_file_destination",
                                description: "Add the destination of the README",
                                   optional: true,
                                       type: String)
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

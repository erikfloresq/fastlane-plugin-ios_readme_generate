# ios_readme_generate plugin

[![fastlane Plugin Badge](https://rawcdn.githack.com/fastlane/fastlane/master/fastlane/assets/plugin-badge.svg)](https://rubygems.org/gems/fastlane-plugin-ios_readme_generate)

## Getting Started

This project is a [fastlane](https://github.com/fastlane/fastlane) plugin. To get started with `fastlane-plugin-ios_readme_generate`, add it to your project by running:

```bash
fastlane add_plugin ios_readme_generate
```

## About ios_readme_generate

Create readme for with some data for iOS projects

## Example

```ruby
ios_readme_generate(
  app_name: "Orbis Mobile",
  app_id: "pe.orbis.urbania",
  app_version: "6.6.6",
  build: "46",
  language: "Swift",
  deployment_target: "iOS 9",
  file_destination: "./docs/README.md"
)
```

## Run tests for this plugin

To run both the tests, and code style validation, run

```
rake
```

To automatically fix many of the styling issues, use
```
rubocop -a
```

## Issues and Feedback

For any other issues and feedback about this plugin, please submit it to this repository.

## Troubleshooting

If you have trouble using plugins, check out the [Plugins Troubleshooting](https://docs.fastlane.tools/plugins/plugins-troubleshooting/) guide.

## Using `fastlane` Plugins

For more information about how the `fastlane` plugin system works, check out the [Plugins documentation](https://docs.fastlane.tools/plugins/create-plugin/).

## About `fastlane`

`fastlane` is the easiest way to automate beta deployments and releases for your iOS and Android apps. To learn more, check out [fastlane.tools](https://fastlane.tools).

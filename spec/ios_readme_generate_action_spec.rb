describe Fastlane::Actions::IosReadmeGenerateAction do
  describe '#run' do
    it 'prints a message' do
      expect(Fastlane::UI).to receive(:message).with("The ios_readme_generate plugin is working!")

      Fastlane::Actions::IosReadmeGenerateAction.run(nil)
    end
  end
end

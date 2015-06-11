Pod::Spec.new do |s|
  s.name         = "RCTBrightcovePlayer"
  s.version      = "0.0.1"
  s.summary      = "React Native wrapper for Brightcove-Player-SDK."
  # s.description  = <<-DESC
  #                  A longer description of RCTBrightcovePlayer in Markdown format.

  #                  * Think: Why did you write this? What is the focus? What does it do?
  #                  * CocoaPods will be using this to generate tags, and improve search results.
  #                  * Try to keep it short, snappy and to the point.
  #                  * Finally, don't worry about the indent, CocoaPods strips it!
  #                  DESC
  s.homepage     = "https://github.com/jeanregisser/react-native-brightcove-player"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"
  s.license      = "MIT"
  s.author       = { "Jean Regisser" => "jean.regisser@gmail.com" }
  s.social_media_url = "http://twitter.com/jeanregisser"
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/jeanregisser/react-native-brightcove-player.git", :tag => "v#{s.version}" }
  s.source_files = "Lib/**/*.{h,m}"
  s.dependency "Brightcove-Player-SDK"
  s.dependency "React"
end

Pod::Spec.new do |s|
  s.name = "RevealSDK"
  s.version = "24.0"
  s.summary = "The Reveal SDK: Runtime view debugging for iOS & tvOS apps & extensions."
  s.license = "MIT"
  s.authors = {"jxb"=>"tech@ergengtv.com"}
  s.homepage = "https://revealapp.com/"
  s.social_media_url = "https://twitter.com/reveal_app"
  s.source = { :git => "https://github.com/NealWills/RevealSDK.git", :tag => s.version.to_s }

  s.ios.deployment_target    = '8.0'
  s.ios.vendored_framework   = 'RevealServer.framework'

  s.requires_arc = false

  s.frameworks = "CoreGraphics","CFNetwork", "QuartzCore"
  s.library = "z"
  s.compiler_flags = "-ObjC"
  s.xcconfig = {"LD_RUNPATH_SEARCH_PATHS" => "$(inherited) @executable_path/Frameworks @loader_path/Frameworks"}

end

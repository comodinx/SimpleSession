Pod::Spec.new do |s|

  s.name         = "SimpleSession"
  s.version      = "0.2.1"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.summary      = "Simple session written in Swift"
  s.homepage     = "https://github.com/comodinx/SimpleSession"
  s.authors      = { "Nicolas Molina" => "comodinx@gmail.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/comodinx/SimpleSession.git", :tag => s.version }

  s.source_files = "Sources/*.swift"

end

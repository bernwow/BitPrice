Pod::Spec.new do |s|
  s.name         = "BitPrice"
  s.version      = "0.0.1"
  s.summary      = "My test library"
  s.homepage     = "https://github.com/user/"
  s.authors      = "Bern"
  s.license      = "MIT"
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/bernwow/BitPrice.git", :branch => "master", :tag => "#{s.version}" }
  s.source_files = "BitPrice/*"
  s.swift_version = "4.0"
end

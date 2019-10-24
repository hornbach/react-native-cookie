require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = package['name']
  s.version      = package['version']
  s.summary      = package['description']
  s.license      = package['license']

  s.authors      = 'andrew.meyer@hornbach.com'
  s.homepage     = "https://hornbach.de"
  s.platform     = :ios, "9.0"

  s.source       = { :git => "https://git.intern.hornbach.de/apps/react-native-hb-webtrekk", :tag => s.version.to_s }
  s.source_files  = "ios/**/*.{h,m}"

  s.dependency "React"
end



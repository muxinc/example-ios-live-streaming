# include public/private pods
source 'git@github.com:cocoapods/Specs.git'

platform :ios, '11.0'

# setup
workspace './MuxLive.xcworkspace'
swift_version = '4.0'
use_frameworks!

def shared_pods
  pod 'Alamofire', '4.7.2'
end

target 'MuxLive' do
  shared_pods
end

target 'SampleApp' do
  shared_pods
end

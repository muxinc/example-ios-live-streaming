platform :ios, '11.0'

# setup
workspace './MuxLive.xcworkspace'
swift_version = '4.0'
use_frameworks!

def shared_pods
  pod 'Alamofire', '~> 4.7'
  pod 'LFLiveKit', '~> 2.6'
  pod 'NextLevel', '~> 0.9'
end

target 'MuxLive' do
  shared_pods
end

target 'SampleApp' do
  pod 'RPCircularProgress', '0.4.0'
  pod 'Hue', '~> 3.0'
  shared_pods
end

# example-ios-live-streaming

An example app for live streaming from an iOS device using the [Mux](http://mux.com) live streaming service, written in [Swift](https://developer.apple.com/swift/).

[![Swift Version](https://img.shields.io/badge/language-swift%204.0-brightgreen.svg)](https://developer.apple.com/swift) [![GitHub license](https://img.shields.io/badge/license-MIT-lightgrey.svg)](https://github.com/muxinc/example-ios-live-streaming/blob/master/LICENSE)

## Welcome

Our sample app uses a couple open source projects and Xcode configurations in order to get live streaming up and running quickly. To make this easy, we recommend using the [CocoaPods](http://cocoapods.org) dependency manager for iOS. Once you have cloned this repo and installed CocoaPods, you are a couple steps away from streaming.

## Quick Start

### Sample Project Setup

After cloning this project and installing [CocoaPods](https://guides.cocoapods.org/using/getting-started.html), run the following command from the project directory to get setup:

```sh
make setup && make pods
```

Then just open the workspace and click play to build and run.

```sh
open *workspace
```

### Components

- `MuxLive.swift` is a component that provides the basic network streaming capabilities and properties for configuration.

- `MuxLiveConfiguration.swift` describes `MuxLive.swift`'s configuration properties.

- `MuxBroadcastViewController.swift` provides a simple camera user interface and wraps `MuxLive.swift`, providing examples on how to use `MuxLive.swift` directly (if that is preferred).

### Integration

If you'd like to integrate these components into your app directly (instead of using them as a reference), you can follow along with the code from the sample project's 'ViewController.swift' and install all the source files in the following ways:

```ruby

# CocoaPods (not current supported! maybe? we have to figure that out.)

pod "MuxLive", "~> 0.0.1"

# Carthage

github "muxinc/example-ios-live-streaming" ~> 0.0.1

# Swift PM

let package = Package(
    dependencies: [
        .Package(url: "https://github.com/muxinc/example-ios-live-streaming", majorVersion: 0)
    ]
)

```

Alternatively, you can just copy all the [source files](https://github.com/muxinc/example-ios-live-streaming/tree/master/Sources) into your Xcode project.

## Documentation

You can find [the docs here](https://muxinc.github.io/example-ios-live-streaming). Documentation is generated with [jazzy](https://github.com/realm/jazzy) and hosted on [GitHub-Pages](https://pages.github.com).

## Resources

* [Mux](http://mux.com)
* [Mux Live Streaming Documentation](https://docs.mux.com/docs/live-streaming)
* [Demuxed](http://demuxed.com)
* [Swift Evolution](https://github.com/apple/swift-evolution)
* [NextLevel](http://nextlevel.engineering/) Media Capture Library
* [Streambox](http://streambox.fr/mse/hls.js-0.8.9/demo/) Web-based HLS video player
* [ijkplayer](https://github.com/Bilibili/ijkplayer) Streaming video player for RTMP
* [LFLiveKit](https://github.com/LaiFengiOS/LFLiveKit) RTMP Streaming SDK

## License

`example-ios-live-streaming` and `MuxLive` are available under the MIT license, see the [LICENSE](https://github.com/muxinc/example-ios-live-streaming/blob/master/LICENSE) file for more information.

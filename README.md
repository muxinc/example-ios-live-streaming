# example-ios-live-streaming

An example app for live streaming from an iOS device using the [Mux](http://mux.com) live streaming service, written in [Swift](https://developer.apple.com/swift/).

[![Swift Version](https://img.shields.io/badge/language-swift%204.0-brightgreen.svg)](https://developer.apple.com/swift) [![GitHub license](https://img.shields.io/badge/license-MIT-lightgrey.svg)](https://github.com/muxinc/example-ios-live-streaming/blob/master/LICENSE)

## Quick Start

### Sample Project Setup

The sample project uses [CocoaPods](https://guides.cocoapods.org/using/getting-started.html) a dependency manager for iOS.

After cloning this project and installing [CocoaPods](https://guides.cocoapods.org/using/getting-started.html), run the following command to get setup:

```sh
make setup && make pods
```

Then just open the workspace to then build and run.

```sh
open *workspace
```

### Integration

You can follow along with the code from the sample project's 'ViewController.swift' or install all the source files in the following ways:

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

Alternatively, copy the [source files](https://github.com/muxinc/example-ios-live-streaming/tree/master/Sources) into your Xcode project.

## Documentation

You can find [the docs here](https://muxinc.github.io/example-ios-live-streaming). Documentation is generated with [jazzy](https://github.com/realm/jazzy) and hosted on [GitHub-Pages](https://pages.github.com).

## Resources

* [Mux](http://mux.com)
* [Mux Live Streaming Documentation](https://docs.mux.com/v1/docs/live-streaming)
* [Demuxed](http://demuxed.com)
* [Swift Evolution](https://github.com/apple/swift-evolution)
* [NextLevel](http://nextlevel.engineering/) Media Capture Library
* [Streambox](http://streambox.fr/mse/hls.js-0.8.9/demo/) Web-based HLS video player
* [ijkplayer](https://github.com/Bilibili/ijkplayer) Streaming video player for RTMP
* [LFLiveKit](https://github.com/LaiFengiOS/LFLiveKit) RTMP Streaming SDK

## License

`example-ios-live-streaming` and `MuxLive` are available under the MIT license, see the [LICENSE](https://github.com/muxinc/example-ios-live-streaming/blob/master/LICENSE) file for more information.

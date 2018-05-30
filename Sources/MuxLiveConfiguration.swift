//
//  MuxLiveConfiguration.swift
//  MuxLive
//
//  Copyright (c) 2018 Mux, Inc.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.
//

import Foundation

/// MuxLive configuration
public class MuxLiveConfiguration {
}

/// MuxLive audio configuration
public class MuxLiveAudioConfiguration: MuxLiveConfiguration {
    
    /// Audio bit rate, AV dictionary key AVEncoderBitRateKey
    public var bitRate: Int = 128000
    
    /// Sample rate in hertz, AV dictionary key AVSampleRateKey
    public var sampleRate: Float64? = 44100
    
    /// Number of channels, AV dictionary key AVNumberOfChannelsKey
    public var channelsCount: Int?

}

/// MuxLive video configuration
public class MuxLiveVideoConfiguration: MuxLiveConfiguration {
}

//
//  ViewController.swift
//  SampleApp
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

import UIKit
import RPCircularProgress
import Hue
//import MuxLive

public class ViewController: UIViewController {

    // MARK: - properties
    
    // MARK: - ivars
    
    internal var _broadcastViewController: MuxBroadcastViewController?
    internal var _streamStatusProgress: RPCircularProgress?
    
    
    // MARK: - object lifecycle
    
    public override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    public required init?(coder aDecoder: NSCoder) {
        fatalError("not supported")
    }
    
    // MARK: - view lifecycle
    
    public override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.black
        self.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]

        var safeAreaTop: CGFloat = UIApplication.shared.statusBarFrame.size.height
        if let window = UIApplication.shared.keyWindow {
            if window.safeAreaInsets.top > 0 {
                safeAreaTop = window.safeAreaInsets.top
            }
        }
        
        self._broadcastViewController = MuxBroadcastViewController()
        if let viewController = self._broadcastViewController {
            viewController.muxBroadcasterDelegate = self
            
            self.addChildViewController(viewController)
            self.view.addSubview(viewController.view)
            viewController.didMove(toParentViewController: self)
        }
        
        let margin: CGFloat = 15.0
        self._streamStatusProgress = RPCircularProgress()
        if let streamStatusProgress = self._streamStatusProgress {
            streamStatusProgress.frame = CGRect(x: 0, y: 0, width: 25, height: 25)
            streamStatusProgress.roundedCorners = true
            streamStatusProgress.thicknessRatio = 0.4
            streamStatusProgress.trackTintColor = UIColor(hex: "#221e1f")
            streamStatusProgress.progressTintColor = UIColor(hex: "#fb3064")
            streamStatusProgress.isUserInteractionEnabled = false
            streamStatusProgress.center = CGPoint(x: self.view.bounds.width - (streamStatusProgress.frame.height * 0.5) - margin,
                                                  y: (streamStatusProgress.frame.width * 0.5) + margin + safeAreaTop)
            self.view.addSubview(streamStatusProgress)
        }

    }
    
    public override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        

    }

}

// MARK: -  status bar

extension ViewController {
    
    public override var preferredStatusBarStyle: UIStatusBarStyle {
        get {
            return .lightContent
        }
    }
    
}

// MARK: - UIButton

extension ViewController {
}

// MARK: - MuxBroadcasterDelegate

extension ViewController: MuxBroadcasterDelegate {
    
    public func muxBroadcaster(_ muxBroadcaster: MuxBroadcastViewController, didChangeState state: MuxLiveState) {
        print("🎬 MuxLive didChangeState, \(state.description)")
        switch state {
        case .ready:
            // solid off-black ring
            self._streamStatusProgress?.trackTintColor = UIColor(hex: "#221e1f")
            self._streamStatusProgress?.updateProgress(0, animated: true, initialDelay: 0, completion: nil)
            self._streamStatusProgress?.enableIndeterminate(false, completion: nil)
            break
        case .pending:
            // spinning red ring
            self._streamStatusProgress?.trackTintColor = UIColor(hex: "#221e1f")
            self._streamStatusProgress?.updateProgress(0.3, animated: true, initialDelay: 0, completion: nil)
            self._streamStatusProgress?.enableIndeterminate(true, completion: nil)
            break
        case .started:
            // solid red ring
            self._streamStatusProgress?.trackTintColor = UIColor(hex: "#221e1f")
            self._streamStatusProgress?.updateProgress(1.0, animated: true, initialDelay: 0, completion: nil)
            self._streamStatusProgress?.enableIndeterminate(false, completion: nil)
            break
        case .stopped:
            // solid off-black ring
            self._streamStatusProgress?.trackTintColor = UIColor(hex: "#221e1f")
            self._streamStatusProgress?.updateProgress(0, animated: true, initialDelay: 0, completion: nil)
            self._streamStatusProgress?.enableIndeterminate(false, completion: nil)
            break
        case .failed:
            // solid yellow ring
            self._streamStatusProgress?.trackTintColor = UIColor(hex: "#f7df48")
            self._streamStatusProgress?.updateProgress(1.0, animated: true, initialDelay: 0, completion: nil)
            self._streamStatusProgress?.enableIndeterminate(false, completion: nil)
            break
        case .refreshing:
            // spinning green ring
            self._streamStatusProgress?.trackTintColor = UIColor(hex: "#30da69")
            self._streamStatusProgress?.updateProgress(0.3, animated: true, initialDelay: 0, completion: nil)
            self._streamStatusProgress?.enableIndeterminate(true, completion: nil)
            break
        }
    }

}

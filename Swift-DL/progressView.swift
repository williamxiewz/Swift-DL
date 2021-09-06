//
//  progressView.swift
//  Swift-DL
//
//  Copyright © 2021 Jake Sulpice. All rights reserved.
//  Based on Get-It by Kevin De Koninck.
//

import Cocoa

class progressView: NSView {

    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)

        self.alphaValue = 0.7
        self.layer?.backgroundColor = NSColor.black.cgColor
        self.layer?.cornerRadius = 15.0
        self.layer?.masksToBounds = true
    }
    
}

//
//  GrayButton.swift
//  Swift-DL
//
//  Copyright © 2021 Jake Sulpice. All rights reserved.
//  Based on Get-It by Kevin De Koninck.
//

import Cocoa

class GrayButton: NSButton {
    
    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)
        
        self.layer?.backgroundColor = CGColor.init(red: 0.3, green: 0.3, blue: 0.3, alpha: 0.3)
        self.layer?.cornerRadius = 15.0
        self.layer?.masksToBounds = true
    }
}

//
//  secureOptionsTextfield.swift
//  Swift-DL
//
//  Copyright © 2021 Jake Sulpice. All rights reserved.
//  Based on Get-It by Kevin De Koninck.
//

import Cocoa

class secureOptionsTextfield: NSSecureTextField {

    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)
        
        var bgColor = NSColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0)
        bgColor = NSColor(red: 245/255.0, green: 245/255.0, blue: 245/255.0, alpha: 1.0)
        
        self.focusRingType = .none
        self.isBordered = false
        self.drawsBackground = false
        self.backgroundColor = bgColor
        self.layer?.backgroundColor = bgColor.cgColor
        
        //underline
        let border = CALayer()
        let width = CGFloat(1.0)
        border.borderColor = redColor.cgColor
        border.frame = CGRect(x: 0, y: self.frame.size.height - width, width:  self.frame.size.width, height: self.frame.size.height)
        border.borderWidth = width
        self.layer?.addSublayer(border)
        self.layer?.masksToBounds = true
    }
    
}

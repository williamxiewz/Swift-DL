//
//  BlueButton.swift
//  Swift-DL
//
//  Copyright © 2021 Jake Sulpice. All rights reserved.
//  Based on Get-It by Kevin De Koninck.
//

import Cocoa

class DownloadButton: NSButton {
    
    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)
        
        self.layer?.backgroundColor = redColor.cgColor
        self.layer?.cornerRadius = 15.0
        self.layer?.masksToBounds = true
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        //text
        let style = NSMutableParagraphStyle()
        style.alignment = .center
        self.attributedTitle = NSAttributedString(string: "Download", attributes: [ NSAttributedString.Key.foregroundColor : NSColor.white,
                                                                                    NSAttributedString.Key.paragraphStyle : style,
                                                                                    NSAttributedString.Key.font: NSFont(name: "Arial", size: 18)!])
    }
}

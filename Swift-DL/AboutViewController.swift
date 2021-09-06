//
//  AboutViewController.swift
//  Swift-DL
//
//  Copyright © 2021 Jake Sulpice. All rights reserved.
//  Based on Get-It by Kevin De Koninck.
//

import Cocoa

class AboutViewController: NSViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.wantsLayer = true
    }
    
    override func awakeFromNib() {
        if self.view.layer != nil {
            let color : CGColor = CGColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            self.view.layer?.backgroundColor = color
        }
    }
    
    @IBAction func githubBtnClicked(_ sender: Any) {
        open(website: "https://github.com/jslpc/Swift-DL")
    }
    
    @IBAction func supportedSitesBtnClicked(_ sender: Any) {
        open(website: "https://rg3.github.io/youtube-dl/supportedsites.html")
    }
    
    @IBAction func githubYTBtnClicked(_ sender: Any) {
        open(website: "https://github.com/yt-dlp/yt-dlp")
    }

    @IBAction func donateBtnClicked(_ sender: Any) {
        open(website: "https://github.com/yt-dlp/yt-dlp/blob/master/Collaborators.md#collaborators")
    }

    func open(website: String){
        if let url = URL(string: website), NSWorkspace.shared.open(url) {
            print("default browser was successfully opened")
        }
    }
    
}

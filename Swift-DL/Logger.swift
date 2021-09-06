//
//  Logger.swift
//  Swift-DL
//
//  Copyright © 2021 Jake Sulpice. All rights reserved.
//  Based on Get-It by Kevin De Koninck.
//

import Foundation

class Logger {
    let log_file: String = "/tmp/swiftdl_logs"
    let install_log_file: String = "/tmp/swiftdl_install"
    
    func reset() {
        let cmd = "echo '' > \(self.log_file)"
        _ = self.execute(commandSynchronous: cmd)
    }
    
    func log(tag: String, str: String) {
        print("\(tag) \(str)")
        let str_ = str.replacingOccurrences(of: "'", with: "")
        var cmd = "echo '\(tag)\t\(str_)' >> \(self.log_file)"
        cmd = cmd.replacingOccurrences(of: "\"", with: "")
        cmd = cmd.replacingOccurrences(of: "`", with: "")
        _ = self.execute(commandSynchronous: cmd)
    }
    
    func resetInstallLog() {
        let cmd = "echo '' > \(self.install_log_file)"
        _ = self.execute(commandSynchronous: cmd)
    }
    
    func logInstall(tag: String, str: String) {
        print("\(tag) \(str)")
        let str_ = str.replacingOccurrences(of: "'", with: "")
        var cmd = "echo '\(tag)\t\(str_)' >> \(self.install_log_file)"
        cmd = cmd.replacingOccurrences(of: "\"", with: "")
        cmd = cmd.replacingOccurrences(of: "`", with: "")
        _ = self.execute(commandSynchronous: cmd)
    }
    
    func execute(commandSynchronous: String) -> String {
        var arguments:[String] = []
        arguments.append("-c")
        arguments.append( EXPORT_PATH + " && " + commandSynchronous + " 2>&1")
        
        let task = Process()
        task.launchPath = "/bin/sh"
        task.arguments = arguments
        
        let pipe = Pipe()
        task.standardOutput = pipe
        task.standardError = pipe
        task.launch()
        task.waitUntilExit()
        let data = pipe.fileHandleForReading.readDataToEndOfFile()
        
        return(NSString(data: data, encoding: String.Encoding.utf8.rawValue)! as String)
    }
    
}

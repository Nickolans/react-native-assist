import Foundation
import ArgumentParser

@main
struct ReactNativeAssist: ParsableCommand {
    @Flag(help: "Print Hello World!")
    var printHelloWorld = false
    
    public func run() {
        print(printHelloWorld ? "HELLO WORLD" : "NOT HELLO WORLD")
        do {
            let output = try safeShell("ls -al")
            print(output)
        } catch {
            print("ERROR: \(error)")
        }
    }
    
    @discardableResult
    func safeShell(_ command: String) throws -> String {
        let task = Process()
        let pipe = Pipe()
        
        task.standardOutput = pipe
        task.standardError = pipe
        task.arguments = ["-c", command]
        task.executableURL = URL(fileURLWithPath: "/bin/zsh")
        task.standardInput = nil

        try task.run()
        
        let data = pipe.fileHandleForReading.readDataToEndOfFile()
        let output = String(data: data, encoding: .utf8)!
        
        return output
    }
}

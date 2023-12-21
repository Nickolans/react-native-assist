import Foundation
import ArgumentParser

@main
struct ReactNativeAssist: ParsableCommand {
    @Flag(help: "Print Hello World!")
    var printHelloWorld = false
    
    static var configuration = CommandConfiguration(commandName: "rna",
                                                    subcommands: [Build.self, Clean.self])
    
    public func run() {
        print(printHelloWorld ? "HELLO WORLD" : "NOT HELLO WORLD")
        do {
            let output = try Shell.safeShell("ls -al")
            print(output)
        } catch {
            print("ERROR: \(error)")
        }
    }
}

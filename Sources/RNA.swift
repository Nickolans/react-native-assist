import ArgumentParser

@main
struct ReactNativeAssist: ParsableCommand {
    @Flag(help: "Print Hello World!")
    var printHelloWorld = false
    
    public func run() {
        print(printHelloWorld ? "HELLO WORLD" : "NOT HELLO WORLD")
    }
}

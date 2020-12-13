public struct Greeting {
    var text: String
    
    public init(text: String = "The beginning!") {
        self.text = text
    }
    
    public func greeting() {
        print(text)
    }
}

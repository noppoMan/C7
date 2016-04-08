public protocol Connection: Stream {
    init(to uri: URI) throws
    var uri: URI { get }
    func open(timingOut deadline: Int64) throws
}

public protocol AsyncConnection: AsyncStream {
    init(to uri: URI) throws
    var uri: URI { get }
    func open(timingOut deadline: Int64, result: (Void throws -> AsyncConnection) -> Void) throws
}

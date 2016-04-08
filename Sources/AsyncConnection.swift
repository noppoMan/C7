public protocol AsyncConnection: AsyncStream {
    func open(timingOut deadline: Int64, result: (Void throws -> AsyncConnection) -> Void) throws
}

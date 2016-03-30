public protocol AsyncStreamServer {
    func accept(result: (Void throws -> AsyncStream) -> Void)
}

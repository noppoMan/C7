public protocol AsyncStreamClient {
    func connect(result: (Void throws -> AsyncStream) -> Void)
}

public protocol AsyncStreamClient {
    func connect(result: (Void throws -> Stream) -> Void)
}
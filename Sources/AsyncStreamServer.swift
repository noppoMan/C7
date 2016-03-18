public protocol AsyncStreamServer {
    func accept(result: (Void throws -> Stream) -> Void)
}
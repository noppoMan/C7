public protocol AsyncStream {
    var closed: Bool { get }
    func close() -> Bool
    func receive(length length: Int, result: (Void throws -> Data) -> Void)
    func send(data data: Data, result: (Void throws -> Void) -> Void)
    func flush(result: (Void throws -> Void) -> Void)
}

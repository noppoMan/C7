public protocol AsyncStream {
    var closed: Bool { get }
    func close() -> Bool
    func receive(result: (Void throws -> Data) -> Void)
    func send(data: Data, result: (Void throws -> Void) -> Void)
    func flush(result: (Void throws -> Void) -> Void)
}
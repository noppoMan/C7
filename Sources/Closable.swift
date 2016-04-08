public protocol Closable {
    var closed: Bool { get }
    func close() -> Bool
}
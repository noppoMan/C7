public final class StreamSequence: Sequence {
    public let stream: Stream

    public init(_ stream: Stream) {
        self.stream = stream
    }

    public func makeIterator() -> AnyIterator<Data> {
        return AnyIterator {
            if self.stream.closed {
                return nil
            }
            return try? self.stream.receive()
        }
    }
}
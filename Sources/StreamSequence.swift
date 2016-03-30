#if swift(>=3.0)
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
#else
public final class StreamSequence: SequenceType {
    public let stream: Stream

    public init(_ stream: Stream) {
        self.stream = stream
    }

    public func generate() -> AnyGenerator<Data> {
        return AnyGenerator {
            if self.stream.closed {
                return nil
            }
            return try? self.stream.receive()
        }
    }
}
#endif
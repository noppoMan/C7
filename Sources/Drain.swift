public final class Drain: DataRepresentable, Stream {
    var buffer: Data
    public var closed = false

    public var data: Data {
        if !closed {
            return buffer
        }
        return []
    }

    public convenience init() {
        self.init([])
    }

    public init(_ stream: Stream) {
        var buffer: Data = []

        if stream.closed {
            self.closed = true
        }


        while !stream.closed {
            if let chunk = try? stream.receive() {
                buffer.bytes += chunk.bytes
            } else {
                break
            }
        }

        self.buffer = buffer
    }

    public init(_ buffer: Data) {
        self.buffer = buffer
    }

    public convenience init(_ buffer: DataRepresentable) {
        self.init(buffer.data)
    }

    public func close() -> Bool {
        if closed {
            return false
        }
        closed = true
        return true
    }

    public func receive() throws -> Data {
        close()
        return buffer
    }

    public func send(data: Data) throws {
        buffer.append(contentsOf: data.bytes)
    }
    
    public func flush() throws {
        buffer = []
    }
}

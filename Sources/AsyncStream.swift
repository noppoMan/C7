public protocol AsyncSending {
    func send(data: Data, timingOut deadline: Int64, result: (Void throws -> Void) -> Void)
    func flush(timingOut deadline: Int64, result: (Void throws -> Void) -> Void)
}

public protocol AsyncReceiving {
    func receive(upTo byteCount: Int, timingOut deadline: Int64, result: (Void throws -> Data) -> Void)
}

public protocol AsyncSendingStream: Closable, AsyncSending {}
public protocol AsyncReceivingStream: Closable, AsyncReceiving {}
public protocol AsyncStream: AsyncSendingStream, AsyncReceivingStream {}
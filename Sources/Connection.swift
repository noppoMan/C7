public protocol Connection: Stream {
    func open(timingOut deadline: Int64) throws
}

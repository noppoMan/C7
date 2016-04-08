public protocol Host {
    func accept(timingOut deadline: Int64) throws -> Stream
}

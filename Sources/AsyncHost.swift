public protocol AsyncHost {
    func accept(timingOut deadline: Int64, result: (Void throws -> AsyncConnection) -> Void)
}

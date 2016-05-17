public enum Number {
    case int8(Int8)
    case int16(Int16)
    case int32(Int32)
    case int64(Int64)

    case uint8(UInt8)
    case uint16(UInt16)
    case uint32(UInt32)
    case uint64(UInt64)

    case float(Float)
    case double(Double)
}

extension Int8 {
    init(_ number: Number) {
        switch number {
        case .int8(let n): self.init(n)
        case .int16(let n): self.init(n)
        case .int32(let n): self.init(n)
        case .int64(let n): self.init(n)

        case .uint8(let n): self.init(n)
        case .uint16(let n): self.init(n)
        case .uint32(let n): self.init(n)
        case .uint64(let n): self.init(n)

        case .float(let n): self.init(n)
        case .double(let n): self.init(n)
        }
    }
}

extension Int16 {
    init(_ number: Number) {
        switch number {
        case .int8(let n): self.init(n)
        case .int16(let n): self.init(n)
        case .int32(let n): self.init(n)
        case .int64(let n): self.init(n)

        case .uint8(let n): self.init(n)
        case .uint16(let n): self.init(n)
        case .uint32(let n): self.init(n)
        case .uint64(let n): self.init(n)

        case .float(let n): self.init(n)
        case .double(let n): self.init(n)
        }
    }
}

extension Int32 {
    init(_ number: Number) {
        switch number {
        case .int8(let n): self.init(n)
        case .int16(let n): self.init(n)
        case .int32(let n): self.init(n)
        case .int64(let n): self.init(n)

        case .uint8(let n): self.init(n)
        case .uint16(let n): self.init(n)
        case .uint32(let n): self.init(n)
        case .uint64(let n): self.init(n)

        case .float(let n): self.init(n)
        case .double(let n): self.init(n)
        }
    }
}

extension Int64 {
    init(_ number: Number) {
        switch number {
        case .int8(let n): self.init(n)
        case .int16(let n): self.init(n)
        case .int32(let n): self.init(n)
        case .int64(let n): self.init(n)

        case .uint8(let n): self.init(n)
        case .uint16(let n): self.init(n)
        case .uint32(let n): self.init(n)
        case .uint64(let n): self.init(n)

        case .float(let n): self.init(n)
        case .double(let n): self.init(n)
        }
    }
}

extension UInt8 {
    init(_ number: Number) {
        switch number {
        case .int8(let n): self.init(n)
        case .int16(let n): self.init(n)
        case .int32(let n): self.init(n)
        case .int64(let n): self.init(n)

        case .uint8(let n): self.init(n)
        case .uint16(let n): self.init(n)
        case .uint32(let n): self.init(n)
        case .uint64(let n): self.init(n)

        case .float(let n): self.init(n)
        case .double(let n): self.init(n)
        }
    }
}

extension UInt16 {
    init(_ number: Number) {
        switch number {
        case .int8(let n): self.init(n)
        case .int16(let n): self.init(n)
        case .int32(let n): self.init(n)
        case .int64(let n): self.init(n)

        case .uint8(let n): self.init(n)
        case .uint16(let n): self.init(n)
        case .uint32(let n): self.init(n)
        case .uint64(let n): self.init(n)

        case .float(let n): self.init(n)
        case .double(let n): self.init(n)
        }
    }
}

extension UInt32 {
    init(_ number: Number) {
        switch number {
        case .int8(let n): self.init(n)
        case .int16(let n): self.init(n)
        case .int32(let n): self.init(n)
        case .int64(let n): self.init(n)

        case .uint8(let n): self.init(n)
        case .uint16(let n): self.init(n)
        case .uint32(let n): self.init(n)
        case .uint64(let n): self.init(n)

        case .float(let n): self.init(n)
        case .double(let n): self.init(n)
        }
    }
}

extension UInt64 {
    init(_ number: Number) {
        switch number {
        case .int8(let n): self.init(n)
        case .int16(let n): self.init(n)
        case .int32(let n): self.init(n)
        case .int64(let n): self.init(n)

        case .uint8(let n): self.init(n)
        case .uint16(let n): self.init(n)
        case .uint32(let n): self.init(n)
        case .uint64(let n): self.init(n)

        case .float(let n): self.init(n)
        case .double(let n): self.init(n)
        }
    }
}

extension Float {
    init(_ number: Number) {
        switch number {
        case .int8(let n): self.init(n)
        case .int16(let n): self.init(n)
        case .int32(let n): self.init(n)
        case .int64(let n): self.init(n)

        case .uint8(let n): self.init(n)
        case .uint16(let n): self.init(n)
        case .uint32(let n): self.init(n)
        case .uint64(let n): self.init(n)

        case .float(let n): self.init(n)
        case .double(let n): self.init(n)
        }
    }
}

extension Double {
    init(_ number: Number) {
        switch number {
        case .int8(let n): self.init(n)
        case .int16(let n): self.init(n)
        case .int32(let n): self.init(n)
        case .int64(let n): self.init(n)

        case .uint8(let n): self.init(n)
        case .uint16(let n): self.init(n)
        case .uint32(let n): self.init(n)
        case .uint64(let n): self.init(n)

        case .float(let n): self.init(n)
        case .double(let n): self.init(n)
        }
    }
}

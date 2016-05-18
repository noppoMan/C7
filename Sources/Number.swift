public enum Number {
    case int(Int)
    case int8(Int8)
    case int16(Int16)
    case int32(Int32)
    case int64(Int64)

    case uint(UInt)
    case uint8(UInt8)
    case uint16(UInt16)
    case uint32(UInt32)
    case uint64(UInt64)

    case float(Float)
    case double(Double)
}

extension Number {
    init(_ number: Int) {
        self = .int(number)
    }

    init(_ number: Int8) {
        self = .int8(number)
    }

    init(_ number: Int16) {
        self = .int16(number)
    }

    init(_ number: Int32) {
        self = .int32(number)
    }

    init(_ number: Int64) {
        self = .int64(number)
    }

    init(_ number: UInt) {
        self = .uint(number)
    }

    init(_ number: UInt8) {
        self = .uint8(number)
    }

    init(_ number: UInt16) {
        self = .uint16(number)
    }

    init(_ number: UInt32) {
        self = .uint32(number)
    }

    init(_ number: UInt64) {
        self = .uint64(number)
    }

    init(_ number: Float) {
        self = .float(number)
    }

    init(_ number: Double) {
        self = .double(number)
    }
}

extension Number {
    var isStoredAsInt: Bool {
        switch self {
        case .int: return true
        default: return false
        }
    }

    var isStoredAsInt8: Bool {
        switch self {
        case .int8: return true
        default: return false
        }
    }

    var isStoredAsInt16: Bool {
        switch self {
        case .int16: return true
        default: return false
        }
    }

    var isStoredAsInt32: Bool {
        switch self {
        case .int32: return true
        default: return false
        }
    }

    var isStoredAsInt64: Bool {
        switch self {
        case .int64: return true
        default: return false
        }
    }

    var isStoredAsUInt: Bool {
        switch self {
        case .uint: return true
        default: return false
        }
    }

    var isStoredAsUInt8: Bool {
        switch self {
        case .uint8: return true
        default: return false
        }
    }

    var isStoredAsUInt16: Bool {
        switch self {
        case .uint16: return true
        default: return false
        }
    }

    var isStoredAsUInt32: Bool {
        switch self {
        case .uint32: return true
        default: return false
        }
    }

    var isStoredAsUInt64: Bool {
        switch self {
        case .uint64: return true
        default: return false
        }
    }

    var isStoredAsFloat: Bool {
        switch self {
        case .float: return true
        default: return false
        }
    }

    var isStoredAsDouble: Bool {
        switch self {
        case .double: return true
        default: return false
        }
    }
}

extension Int {
    init(_ number: Number) {
        switch number {
        case .int(let n): self.init(n)
        case .int8(let n): self.init(n)
        case .int16(let n): self.init(n)
        case .int32(let n): self.init(n)
        case .int64(let n): self.init(n)

        case .uint(let n): self.init(n)
        case .uint8(let n): self.init(n)
        case .uint16(let n): self.init(n)
        case .uint32(let n): self.init(n)
        case .uint64(let n): self.init(n)

        case .float(let n): self.init(n)
        case .double(let n): self.init(n)
        }
    }
}

extension Int8 {
    init?(_ number: Number) {
        switch number {
        case let .int(value)    where value <= Int(Int8.max):    self.init(value)
        case let .int8(value):                                   self.init(value)
        case let .int16(value)  where value <= Int16(Int8.max):  self.init(value)
        case let .int32(value)  where value <= Int32(Int8.max):  self.init(value)
        case let .int64(value)  where value <= Int64(Int8.max):  self.init(value)
        case let .uint(value)   where value <= UInt(Int8.max):   self.init(value)
        case let .uint8(value):                                  self.init(value)
        case let .uint16(value) where value <= UInt16(Int8.max): self.init(value)
        case let .uint32(value) where value <= UInt32(Int8.max): self.init(value)
        case let .uint64(value) where value <= UInt64(Int8.max): self.init(value)
        case let .float(value)  where value <= Float(Int8.max):  self.init(value)
        case let .double(value) where value <= Double(Int8.max): self.init(value)
        default: return nil
        }
    }
}

extension Int16 {
    init(_ number: Number) {
        switch number {
        case .int(let n): self.init(n)
        case .int8(let n): self.init(n)
        case .int16(let n): self.init(n)
        case .int32(let n): self.init(n)
        case .int64(let n): self.init(n)

        case .uint(let n): self.init(n)
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
        case .int(let n): self.init(n)
        case .int8(let n): self.init(n)
        case .int16(let n): self.init(n)
        case .int32(let n): self.init(n)
        case .int64(let n): self.init(n)

        case .uint(let n): self.init(n)
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
        case .int(let n): self.init(n)
        case .int8(let n): self.init(n)
        case .int16(let n): self.init(n)
        case .int32(let n): self.init(n)
        case .int64(let n): self.init(n)

        case .uint(let n): self.init(n)
        case .uint8(let n): self.init(n)
        case .uint16(let n): self.init(n)
        case .uint32(let n): self.init(n)
        case .uint64(let n): self.init(n)

        case .float(let n): self.init(n)
        case .double(let n): self.init(n)
        }
    }
}

extension UInt {
    init(_ number: Number) {
        switch number {
        case .int(let n): self.init(n)
        case .int8(let n): self.init(n)
        case .int16(let n): self.init(n)
        case .int32(let n): self.init(n)
        case .int64(let n): self.init(n)

        case .uint(let n): self.init(n)
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
        case .int(let n): self.init(n)
        case .int8(let n): self.init(n)
        case .int16(let n): self.init(n)
        case .int32(let n): self.init(n)
        case .int64(let n): self.init(n)

        case .uint(let n): self.init(n)
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
        case .int(let n): self.init(n)
        case .int8(let n): self.init(n)
        case .int16(let n): self.init(n)
        case .int32(let n): self.init(n)
        case .int64(let n): self.init(n)

        case .uint(let n): self.init(n)
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
        case .int(let n): self.init(n)
        case .int8(let n): self.init(n)
        case .int16(let n): self.init(n)
        case .int32(let n): self.init(n)
        case .int64(let n): self.init(n)

        case .uint(let n): self.init(n)
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
        case .int(let n): self.init(n)
        case .int8(let n): self.init(n)
        case .int16(let n): self.init(n)
        case .int32(let n): self.init(n)
        case .int64(let n): self.init(n)

        case .uint(let n): self.init(n)
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
        case .int(let n): self.init(n)
        case .int8(let n): self.init(n)
        case .int16(let n): self.init(n)
        case .int32(let n): self.init(n)
        case .int64(let n): self.init(n)

        case .uint(let n): self.init(n)
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
        case .int(let n): self.init(n)
        case .int8(let n): self.init(n)
        case .int16(let n): self.init(n)
        case .int32(let n): self.init(n)
        case .int64(let n): self.init(n)

        case .uint(let n): self.init(n)
        case .uint8(let n): self.init(n)
        case .uint16(let n): self.init(n)
        case .uint32(let n): self.init(n)
        case .uint64(let n): self.init(n)

        case .float(let n): self.init(n)
        case .double(let n): self.init(n)
        }
    }
}

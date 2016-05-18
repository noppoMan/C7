public protocol StructuredDataInitializable {
    init(structuredData: StructuredData) throws
}

public protocol StructuredDataRepresentable {
    var structuredData: StructuredData { get }
}

public protocol StructuredDataConvertible: StructuredDataInitializable, StructuredDataRepresentable {}

public enum StructuredData {
    case nullValue
    case bool(Bool)
    case double(Double)
    case integer(Int)
    case string(String)
    case binary(Data)
    case array([StructuredData])
    case dictionary([String: StructuredData])
}

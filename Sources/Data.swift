// Data.swift
//
// The MIT License (MIT)
//
// Copyright (c) 2015 SwiftX
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

public struct Data {
    public var bytes: [Byte]

    public init(_ bytes: [Byte]) {
        self.bytes = bytes
    }
}

extension Data {
    public init(_ string: String) {
        self.init([Byte](string.utf8))
    }
}

extension Data: RangeReplaceableCollection {
    public init() {
        self.init([])
    }

    public init(repeating repeatedValue: Byte, count: Int) {
        self.init([Byte](repeating: repeatedValue, count: count))
    }

    public mutating func replaceSubrange<C : Collection where C.Iterator.Element == Byte>(subRange: Range<Int>, with newElements: C) {
        self.bytes.replaceSubrange(subRange, with: newElements)
    }

    public mutating func reserveCapacity(n: Int) {
        self.bytes.reserveCapacity(n)
    }

    public init<S : Sequence where S.Iterator.Element == Byte>(_ elements: S) {
        self.init([Byte](elements))
    }

    public mutating func append(x: Byte) {
        self.bytes.append(x)
    }

    public mutating func append<S : Sequence where S.Iterator.Element == Byte>(contentsOf newElements: S) {
        self.bytes.append(contentsOf: newElements)
    }


    public mutating func insert(newElement: Byte, at i: Int) {
        self.bytes.insert(newElement, at: i)
    }

    public mutating func insert<S : Collection where S.Iterator.Element == Byte>(contentsOf newElements: S, at i: Int) {
        self.bytes.insert(contentsOf: newElements, at: i)

    }

    public mutating func remove(at i: Int) -> Byte {
        return self.bytes.remove(at: i)
    }

    public mutating func removeFirst() -> Byte {
        return self.bytes.removeFirst()
    }

    public mutating func removeFirst(n: Int) {
        self.bytes.removeFirst(n)
    }

    public mutating func removeSubrange(bounds: Range<Int>) {
        self.bytes.removeSubrange(bounds)
    }

    public mutating func removeAll(keepingCapacity keepCapacity: Bool) {
        self.bytes.removeAll(keepingCapacity: keepCapacity)
    }
}

extension Data: MutableCollection {
    public func makeIterator() -> IndexingIterator<[Byte]> {
        return bytes.makeIterator()
    }

    public var startIndex: Int {
        return bytes.startIndex
    }

    public var endIndex: Int {
        return bytes.endIndex
    }

    public var count: Int {
        return bytes.count
    }

    public subscript(index: Int) -> Byte {
        get {
            return bytes[index]
        }

        set(value) {
            bytes[index] = value
        }
    }

    public subscript (bounds: Range<Int>) -> ArraySlice<Byte> {
        get {
            return bytes[bounds]
        }

        set(slice) {
            bytes[bounds] = slice
        }
    }
}

extension Data: NilLiteralConvertible {
    public init(nilLiteral: Void) {
        self.init([])
    }
}

extension Data: ArrayLiteralConvertible {
    public init(arrayLiteral bytes: Byte...) {
        self.init(bytes)
    }
}

extension Data: StringLiteralConvertible {
    public init(stringLiteral string: String) {
        self.init(string)
    }

    public init(extendedGraphemeClusterLiteral string: String){
        self.init(string)
    }

    public init(unicodeScalarLiteral string: String){
        self.init(string)
    }
}

extension Data: Equatable {}

public func ==(lhs: Data, rhs: Data) -> Bool {
    return lhs.bytes == rhs.bytes
}

import Foundation

/// Clamping a `Comparable` value from a lower bound up to, and including, an upper bound.
@propertyWrapper
public struct Clamping<Value: Comparable> {
    
    private(set) var value: Value
    public let range: ClosedRange<Value>
    
    public var wrappedValue: Value {
        get { max(range.lowerBound, min(value, range.upperBound)) }
        set { value = newValue }
    }
    
    public init(wrappedValue: Value, _ range: ClosedRange<Value>) {
        self.value = wrappedValue
        self.range = range
    }
    
}

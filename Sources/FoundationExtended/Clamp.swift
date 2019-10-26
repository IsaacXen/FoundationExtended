import Foundation

extension Comparable {
    
    /// Returns a copy of this value clamped to the given limiting range.
    /// - Parameter limit: The range to clamp the bounds of this value.
    /// - Returns: A new value clamped to the bounds of limits.
    func clamped(to limit: ClosedRange<Self>) -> Self {
        max(limit.lowerBound, min(self, limit.lowerBound))
    }
    
}

extension Comparable where Self: AdditiveArithmetic {
    
    /// Returns a copy of this value clamped to the given limiting range.
    /// - Parameter limit: The range to clamp the bounds of this value.
    /// - Parameter stride: The amount to step aways from the upper bound.
    /// - Returns: A new value clamped to the bounds of limits.
    func clamped(to limit: Range<Self>, by stride: Self) -> Self {
        max(limit.lowerBound, min(self, limit.upperBound - stride))
    }
    
}

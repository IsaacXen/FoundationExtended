import Foundation

/// Round down to the nearest multiple of given multiplier.
/// - Parameter value: The value to round down.
/// - Parameter multiplier: A non-zero multiplier that the returned value is multiple of. Passed in `0` rised an exception.
/// - Parameter file: The file name to print with message if the precondition fails. The default is the file where floor(_:_:file:line:) is called.
/// - Parameter line: The line number to print along with message if the assertion fails. The default is the line number where floor(_:_:file:line:) is called.
/// - Returns: The nearest multiple of `multiplier` which is less than or equal to the `value`.
public func floor<T>(_ value: T, to multiplier: T, file: StaticString = #file, line: UInt = #line) -> T where T: FloatingPoint {
    precondition(multiplier != 0, "Expected an non-zero multiplier but found `0`.", file: file, line: line)
    return floor(value / abs(multiplier)) * abs(multiplier)
}

/// Round up to the nearest multiple of given multiplier.
/// - Parameter value: The value to round up.
/// - Parameter multiplier: A non-zero multiplier that the returned value is multiple of. Passed in `0` rised an exception.
/// - Parameter file: The file name to print with message if the precondition fails. The default is the file where ceil(_:_:file:line:) is called.
/// - Parameter line: The line number to print along with message if the assertion fails. The default is the line number where ceil(_:_:file:line:) is called.
/// - Returns: The nearest multiple of `multiplier` which is greater than or equal to the `value`.
public func ceil<T>(_ value: T, to multiplier: T, file: StaticString = #file, line: UInt = #line) -> T where T: FloatingPoint {
    precondition(multiplier != 0, "Expected an non-zero multiplier but found `0`.", file: file, line: line)
    return ceil(value / abs(multiplier)) * abs(multiplier)
}

/// Round off to the nearest multiple of given multiplier.
/// - Parameter value: The value to round off.
/// - Parameter multiplier: A non-zero multiplier that the returned value is multiple of. Passed in `0` rised an exception.
/// - Parameter file: The file name to print with message if the precondition fails. The default is the file where round(_:_:file:line:) is called.
/// - Parameter line: The line number to print along with message if the assertion fails. The default is the line number where round(_:_:file:line:) is called.
/// - Returns: The nearest multiple of `multiplier` which is greater than, less than or equal to the `value`.
public func round<T>(_ value: T, to multiplier: T, file: StaticString = #file, line: UInt = #line) -> T where T: FloatingPoint {
    precondition(multiplier != 0, "Expected an non-zero multiplier but found `0`.", file: file, line: line)
    let f = floor(value, to: multiplier)
    let c = ceil(value, to: multiplier)
    return abs(value - f) < abs(c - value) ? f : c
}

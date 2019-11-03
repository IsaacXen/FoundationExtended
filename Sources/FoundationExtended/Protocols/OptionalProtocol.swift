import Foundation

/// An protocol that all Optional type implemneted.
///
/// This protocol is useful when you need to check if a value is a optional without the need to specific its generic value type.
///
/// ```swift
/// let a = Optional(42)
/// let b = 24
///
/// a is OptionalProtocol // true
/// b is OptionalProtocol // false
/// ```
///
protocol OptionalProtocol {
  // the metatype value for the wrapped type.
  static var wrappedType: Any.Type { get }
}

extension Optional: OptionalProtocol {
  static var wrappedType: Any.Type { return Wrapped.self }
}

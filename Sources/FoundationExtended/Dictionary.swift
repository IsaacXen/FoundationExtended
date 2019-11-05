import Foundation

public extension Dictionary {
    
    /// Returns an array containing the results of calling the given transdormatio with each key and value of this dictionary.
    /// - Parameter transform: A closure that accepts an key-value tuple of this dictionary as its argument and returns an tuple value.
    /// - Parameter pair: The tuple of key and value of this dictionary.
    /// - Returns: An dictionary of the results of calling `transform` with each key-value pair of this dictionary.
    func dictMap<Key: Hashable, Value>(_ transform: (_ pair: (key: Self.Key, value: Self.Value)) throws -> (Key, Value)) rethrows -> [Key: Value] {
        var dictionary = [Key: Value]()
        for (k, v) in self {
            let (key, value) = try transform((k, v))
            dictionary[key] = value
        }
        return dictionary
    }
    
    /// Returns an array containing the non-`nil` results of calling the given transdormatio with each key and value of this dictionary.
    /// - Parameter transform: A closure that accepts an key-value tuple of this dictionary as its argument and returns an tuple value.
    /// - Parameter pair: The tuple of key and value of this dictionary.
    /// - Returns: An dictionary of the non-`nil` results of calling `transform` with each key-value pair of this dictionary.
    func compactDictMap<Key: Hashable, Value>(_ transform: (_ pair: (key: Self.Key, value: Self.Value)) throws -> (Key, Value)?) rethrows -> [Key: Value] {
        var dictionary = [Key: Value]()
        for (k, v) in self {
            if let (key, value) = try transform((k, v)) {
                dictionary[key] = value
            }
        }
        return dictionary
    }

}

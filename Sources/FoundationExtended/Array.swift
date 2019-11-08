import Foundation

public extension Array {
    
    /// Returns an array containing the results of calling the given `transform` with each key and value of this dictionary.
    /// - Parameter transform: A closure that accepts an key-value tuple of this dictionary as its argument and returns an tuple value.
    /// - Parameter element: The tuple of key and value of this dictionary.
    /// - Returns: An dictionary of the results of calling `transform` with each key-value pair of this dictionary.
    func dictMap<Key, Value>(_ transform: (_ element: Element) throws -> (Key, Value)) rethrows -> [Key: Value] where Key: Hashable {
        var dictionary = [Key: Value]()
        for element in self {
            let (key, value) = try transform(element)
            dictionary[key] = value
        }
        return dictionary
    }
    
    /// Returns an array containing the non-`nil` results of calling the given `transform` with each key and value of this dictionary.
    /// - Parameter transform: A closure that accepts an key-value tuple of this dictionary as its argument and returns an tuple value.
    /// - Parameter element: The tuple of key and value of this dictionary.
    /// - Returns: An dictionary of the non-`nil` results of calling `transform` with each key-value pair of this dictionary.
    func compactDictMap<Key, Value>(_ transform: (_ element: Element) throws -> (Key, Value)?) rethrows -> [Key: Value] where Key: Hashable {
        var dictionary = [Key: Value]()
        for element in self {
            if let (key, value) = try transform(element) {
                dictionary[key] = value
            }
        }
        return dictionary
    }
    
}

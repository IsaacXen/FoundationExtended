import Foundation

public extension String {

    /// Returns a localized version of the string designated by the specified key and residing in the specified table.
    /// - Parameter key: The key for a string in the table identified by tableName.
    /// - Parameter tableName: The receiver’s string table to search. If tableName is `nil` or is an empty string, the method attempts to use the table in `Localizable.strings`.
    /// - Parameter bundle: The bundle of the string table.
    /// - Parameter value: The value to return if key is nil or if a localized string for key can’t be found in the table.
    /// - Returns: A localized version of the string designated by key in table tableName, or `value` if failed.
    static func localized(_ key: String, table tableName: String? = nil, bundle: Bundle = .main, value: String = "") -> String {
        NSLocalizedString(key, tableName: tableName, bundle: bundle, value: value, comment: key)
    }
    
}

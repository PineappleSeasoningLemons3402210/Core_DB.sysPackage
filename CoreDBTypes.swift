import Foundation

public typealias CoreDBRecord = [String: Any]

public enum CoreDBError: Error {
    case tableNotFound(String)
    case invalidQuery
}
